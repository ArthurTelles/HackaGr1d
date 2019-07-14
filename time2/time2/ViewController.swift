//
//  ViewController.swift
//  time2
//
//  Created by Arthur Telles on 14/07/19.
//  Copyright © 2019 Arthur Telles. All rights reserved.
//

import UIKit
import FirebaseFirestore

class ViewController: UIViewController {
    
    var userStruct: ClientStruct!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        APIController.get(forPath: "")
//        let parameters = ["username": "@Arthur", "tweet": "Dale"]
//        APIController.post(withParameters: parameters)
        
//        let ref = Database.database().reference()
//        ref.child("teste").observeSingleEvent(of: .value) { (snapshot) in
//            print(snapshot)
//            let clientData = snapshot.value as? String
//        }
        
//        self.userStruct = ClientStruct(cpf: "", endereco: "", idade: "", idusuario: "", nome: "", profissao: "", renda: "", rg: "", seguro: "", sexo: "", telefone: "")
//
    }
    
    /// Function that enables the unwind segue animation for this view from the preStatus.
    ///
    /// - Parameter sender: The object that performs the transition between two VC's.
    @IBAction func didUnwindFromPreStatus(_ sender: UIStoryboardSegue) {}
}
