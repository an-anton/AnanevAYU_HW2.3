//
//  HobbyViewController.swift
//  AnanevAYU_HW2.3
//
//  Created by Anton Anan'eV on 30.10.2021.
//

import UIKit

class HobbyViewController: UIViewController {
    
    @IBOutlet var hobbyLabel: UILabel!
    
    var hobby: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        hobbyLabel.text = hobby
    }
    

}
