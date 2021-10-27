//
//  ViewController.swift
//  AnanevAYU_HW2.3
//
//  Created by Anton Anan'eV on 26.10.2021.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var loginButton: UIButton!
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.layer.cornerRadius = loginButton.frame.height / 5
        
        userNameTF.delegate = self
        passwordTF.delegate = self
    }

    let userName = "User"
    let userPassword = "Password"
    
    @IBAction func forgotUserOrPasswordAction(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            showAlert(title: "Oops!", message: "Your name is User 😉🤫")
        case 1:
            showAlert(title: "Oops!", message: "Your password is Password 😉🤫")
        case 2:
            
            if userNameTF.text?.isEmpty == true ,passwordTF.text?.isEmpty == true {
                showAlert(title: "Invalid login or password", message: "Please enter user name or password")
            }
            
            if userNameTF.text == userName && passwordTF.text != userPassword {
                showAlert(title: "Invalid password", message: "Please enter correct your password")
                userNameTF.text = userName
                passwordTF.text = ""
            }
            
            if userNameTF.text != userName && passwordTF.text != userPassword {
                showAlert(title: "Invalid login or password", message: "Please enter correct user name or password")
                userNameTF.text = ""
                passwordTF.text = ""
            }

        default:
            break
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.welcomeUser = userNameTF.text
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue){
        userNameTF.text = ""
        passwordTF.text = ""
        dismiss(animated: true)
    }
    
    // Метод для скрытия клавиатуры тапом по экрану
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
    }
}

extension LoginViewController: UITextFieldDelegate {
    private func showAlert(title: String, message: String) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        passwordTF.becomeFirstResponder()
    }

}

