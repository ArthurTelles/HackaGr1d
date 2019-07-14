//
//  SearchClientViewController.swift
//  time2
//
//  Created by Arthur Telles on 14/07/19.
//  Copyright © 2019 Arthur Telles. All rights reserved.
//

import UIKit
import FirebaseFirestore

class SearchClientViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var searchTextField: UITextField!
    
    var userStruct: ClientStruct!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.searchTextField.delegate = self
    }
    
    /// This function is called everytime the return button is pressed on the keyboard.
    ///
    /// - Parameter textField: An object that displays a aditable text.
    /// - Returns: A boolean indicator for the textfield.
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        
        guard let id = self.searchTextField.text else {
            createAlert(withTitle: "Invalid ID", Message: "The user ID you're looking for doesn't exist.", andActionTitle: "ok")
            return false
        }
        print(id)
        getClientData(withID: id)
        self.searchTextField.text = ""
        
        return false
    }
    
    /// This function makes a call for the Firebase server to get the right user info.
    ///
    /// - Parameter id: The id that is going to be used to query the user info.
    func getClientData(withID id: String) {
        let db = Firestore.firestore()
        db.collection("usuarios").whereField("idusuario", isEqualTo: id).getDocuments { (snapshot, error) in
            if error != nil {
                print(error)
            } else {
                for document in (snapshot?.documents)! {
                    guard let cpf = document.data()["cpf"] as? String else { return }
                    guard let email = document.data()["email"] as? String else { return }
                    guard let endereco = document.data()["endereco"] as? String else { return }
                    guard let idade = document.data()["idade"] as? String else { return }
                    guard let idusuario = document.data()["idusuario"] as? String else { return }
                    guard let nome = document.data()["nome"] as? String else { return }
                    guard let profissao = document.data()["profissao"] as? String else { return }
                    guard let renda = document.data()["renda"] as? String else { return }
                    guard let rg = document.data()["rg"] as? String else { return }
                    guard let seguro = document.data()["seguro"] as? String else { return }
                    guard let sexo = document.data()["sexo"] as? String else { return }
                    guard let telefone = document.data()["telefone"] as? String else { return }
                    
                    self.userStruct = ClientStruct(cpf: cpf, email: email, endereco: endereco, idade: idade, idusuario: idusuario, nome: nome, profissao: profissao, renda: renda, rg: rg, seguro: seguro, sexo: sexo, telefone: telefone)
                    
                    self.performSegue(withIdentifier: "foundUser", sender: nil)
                    
                    print(self.userStruct)
                }
            }
        }
    }
    
    /// This function creates alerts that will be presented immediately on the screen.
    ///
    /// - Parameters:
    ///   - title: The title presented on the alert.
    ///   - message: The message description of the alert.
    ///   - actionTitle: The action that will be present on the alert.
    func createAlert(withTitle title: String, Message message: String, andActionTitle actionTitle: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: actionTitle, style: .default, handler: nil))
        self.present(alert, animated: true)
    }
    
    /// This function is called everytime a segue is going to be called between two view controllers.
    ///
    /// - Parameters:
    ///   - segue: An object that performs a visual transition between two view controllers.
    ///   - sender: The object that is calling the segue action.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.destination is FoundClientViewController
        {
            let vc = segue.destination as? FoundClientViewController
            vc?.clientData = self.userStruct
        }
    }
}
