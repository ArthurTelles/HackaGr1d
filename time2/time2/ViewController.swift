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
    }
    
    /// Function that enables the unwind segue animation for this view from the preStatus.
    ///
    /// - Parameter sender: The object that performs the transition between two VC's.
    @IBAction func didUnwindFromPreStatus(_ sender: UIStoryboardSegue) {}
}
