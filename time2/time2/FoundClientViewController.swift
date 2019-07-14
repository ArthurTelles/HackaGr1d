//
//  FoundClientViewController.swift
//  time2
//
//  Created by Arthur Telles on 14/07/19.
//  Copyright © 2019 Arthur Telles. All rights reserved.
//

import UIKit

class FoundClientViewController: UIViewController {
    
    var clientData: ClientStruct!
    
    @IBOutlet weak var clientNameLabel: UILabel!
    @IBOutlet weak var clientIDLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.clientNameLabel.text = self.clientData.nome
        self.clientIDLabel.text = "ID " + self.clientData.idusuario
    }
    
    
}
