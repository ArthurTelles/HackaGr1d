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
    @IBOutlet weak var middleLine: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UIView.animate(withDuration: 1.5, delay: 0, options: [.repeat, .autoreverse], animations: {
            
            self.middleLine.transform = CGAffineTransform(scaleX: 0.8, y: 1)
            
        }, completion: nil)        
    }
    
    /// Function that enables the unwind segue animation for this view from the preStatus.
    ///
    /// - Parameter sender: The object that performs the transition between two VC's.
    @IBAction func didUnwindFromPreStatus(_ sender: UIStoryboardSegue) {}
}
