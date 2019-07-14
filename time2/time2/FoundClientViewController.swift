//
//  FoundClientViewController.swift
//  time2
//
//  Created by Arthur Telles on 14/07/19.
//  Copyright © 2019 Arthur Telles. All rights reserved.
//

import UIKit

class FoundClientViewController: UIViewController {
    
    var clientName: String = ""
    var clientID: String = ""
    
    @IBOutlet weak var clientNameLabel: UILabel!
    @IBOutlet weak var clientIDLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.clientNameLabel.text = self.clientName
        self.clientIDLabel.text = "ID " + self.clientID
    }
}
