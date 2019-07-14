//
//  ViewController.swift
//  time2
//
//  Created by Arthur Telles on 14/07/19.
//  Copyright © 2019 Arthur Telles. All rights reserved.
//

import UIKit
import FirebaseDatabase
import FirebaseFirestore

class ViewController: UIViewController {
    
    var userStruct: ClientStruct!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        APIController.get(forPath: "")
//        let parameters = ["username": "@Arthur", "tweet": "Dale"]
//        APIController.post(withParameters: parameters)
        
//        let ref = Database.database().reference()
//        ref.child("teste").observeSingleEvent(of: .value) { (snapshot) in
//            print(snapshot)
//            let clientData = snapshot.value as? String
//        }
        
        self.userStruct = ClientStruct(cpf: "", endereco: "", idade: "", idusuario: "", nome: "", profissao: "", renda: "", rg: "", seguro: "", sexo: "", telefone: "")
        
        getClientData(withID: "5GIltNZpQGau9K1hvluS")
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
                    
                    self.userStruct = ClientStruct(cpf: cpf, endereco: endereco, idade: idade, idusuario: idusuario, nome: nome, profissao: profissao, renda: renda, rg: rg, seguro: seguro, sexo: sexo, telefone: telefone)
                }
            }
        }
    }
    
}
