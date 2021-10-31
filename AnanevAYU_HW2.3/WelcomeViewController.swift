//
//  WelcomeViewController.swift
//  AnanevAYU_HW2.3
//
//  Created by Anton Anan'eV on 27.10.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var name: String!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let userName = name else {
            return
        }
        welcomeLabel.text = "Welcome, \(userName)!"
    }
}
