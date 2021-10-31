//
//  AboutMeButtonViewController.swift
//  AnanevAYU_HW2.3
//
//  Created by Anton Anan'eV on 30.10.2021.
//

import UIKit

class AboutMeButtonViewController: UIViewController {

    @IBOutlet var labelAboutMe: UILabel!
    
    let userAboutMe = User()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        labelAboutMe.text = userAboutMe.aboutMe
        
        
    }
}
