//
//  AboutMeViewController.swift
//  AnanevAYU_HW2.3
//
//  Created by Anton Anan'eV on 30.10.2021.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    @IBOutlet var aboutMeLabel: UILabel!
    
    var name: String!
    var age: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let nameUser = name  else { return }
        guard let nameAge = age  else { return }
        
        aboutMeLabel.text = "Привет, меня зовут \(nameUser). Мне \(nameAge) Для подробной информации обо мне нажми на кномку ниже"
    }
    

   

}
