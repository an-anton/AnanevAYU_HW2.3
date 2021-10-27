//
//  WelcomeViewController.swift
//  AnanevAYU_HW2.3
//
//  Created by Anton Anan'eV on 27.10.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var welcomeUser: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let name = welcomeUser else { return }
        welcomeLabel.text = "Welcome, \(name)!!!"
    }
}
