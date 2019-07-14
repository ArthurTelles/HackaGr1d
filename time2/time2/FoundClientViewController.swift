//
//  FoundClientViewController.swift
//  time2
//
//  Created by Arthur Telles on 14/07/19.
//  Copyright © 2019 Arthur Telles. All rights reserved.
//

import UIKit

class FoundClientViewController: UIViewController {
    
    // Variables declaration
    var clientData: ClientStruct!
    
    // Outlets declaration
    @IBOutlet weak var clientNameLabel: UILabel!
    @IBOutlet weak var clientIDLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.clientNameLabel.text = self.clientData.nome
        self.clientIDLabel.text = "ID " + self.clientData.idusuario
        
        let parameters = ["Datasets": "emails","q": "doc{09177466561}"]
        APIController.post(withParameters: parameters)
    }
}
