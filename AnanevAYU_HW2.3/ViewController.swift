//
//  ViewController.swift
//  AnanevAYU_HW2.3
//
//  Created by Anton Anan'eV on 26.10.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var loginButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButton.layer.cornerRadius = loginButton.frame.height / 5
    }

    
    
    @IBAction func forgotUserOrPasswordAction(_ sender: UIButton) {
        
        switch sender.tag {
        case 0:
            showAlert(title: "Oops!", message: "Your name is User 😉🤫")
        case 1:
            showAlert(title: "Oops!", message: "Your password is Password 😉🤫")
        default:
            break
        }
        
        
        
    }
    
}
extension ViewController {
    private func showAlert(title: String, message: String) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
