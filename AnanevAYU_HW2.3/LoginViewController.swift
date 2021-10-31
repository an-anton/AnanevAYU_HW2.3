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

    let user = User()
    
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
            
            if userNameTF.text == user.login && passwordTF.text != user.password {
                showAlert(title: "Invalid password", message: "Please enter correct your password")
                userNameTF.text = user.login
                passwordTF.text = ""
            }
            
            if userNameTF.text != user.login && passwordTF.text != user.password {
                showAlert(title: "Invalid login or password", message: "Please enter correct user name or password")
                userNameTF.text = ""
                passwordTF.text = ""
            }

        default:
            break
        }
    }
   // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        
        for viewController in tabBarController.viewControllers! {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.name = user.name
            }
            
            if let hobbyVC = viewController as? HobbyViewController {
                hobbyVC.hobby = user.hobby
            }
           
            if let navigationVC = viewController as? UINavigationController {
                
                for viewController in navigationVC.viewControllers {
                    if let aboutMeVC = viewController as? AboutMeViewController {
                        aboutMeVC.name = user.name
                        aboutMeVC.age = user.age
                    }
                    
                    if let aboutMeMoreVC = viewController as? AboutMeButtonViewController {
                        aboutMeMoreVC.userAboutMe = user.aboutMeMore // не смог разобраться почему не передаются данные по последнему контроллеру в navigationVC
                    }
                }
            }
        }
    }
    
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            self.view.endEditing(true) }
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

