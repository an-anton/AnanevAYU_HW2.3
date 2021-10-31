//
//  AboutMeViewController.swift
//  AnanevAYU_HW2.3
//
//  Created by Anton Anan'eV on 30.10.2021.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    @IBOutlet var aboutMeLabel: UILabel!
    
    let objectUser = User()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        aboutMeLabel.text = "Привет, меня зовут \(objectUser.name). Мне \(objectUser.age) Для подробной информации обо мне нажми на кномку ниже"
    }
    

   

}
