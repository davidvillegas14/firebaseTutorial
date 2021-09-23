//
//  AuthViewController.swift
//  TutorialFireBase
//
//  Created by david on 22/09/21.
//

import UIKit
import FirebaseAnalytics
import FirebaseAuth

class AuthViewController: UIViewController {
    
    @IBOutlet weak var emailTextFiel: UITextField!
    @IBOutlet weak var passworTextFiel: UITextField!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var logInButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Autenticación"
        Analytics.logEvent("InitScreen", parameters: ["message" : "integración completa"])
    }
    
    
    @IBAction func signInButtonAction(_ sender: Any) {
        if let email = emailTextFiel.text, let password = passworTextFiel.text {
            Auth.auth().createUser(withEmail: email, password: password) { result, error in
                if let result = result, error == nil{
                    self.navigationController?.pushViewController(HomeViewController(email: result.user.email!, provider: .basic), animated: true)
                } else {
                    let alertController = UIAlertController(title: "Error", message: "Se ha producido un error al registrar al usuario", preferredStyle: UIAlertController.Style.alert)
                    alertController.addAction(UIAlertAction(title: "Aceptar", style: UIAlertAction.Style.default, handler: nil))
                    self.present(alertController, animated: true, completion: nil)
                }
            }
        }
    }
    
    @IBAction func logInActionButton(_ sender: Any) {
        if let email = emailTextFiel.text, let password = passworTextFiel.text {
            Auth.auth().signIn(withEmail: email, password: password) { result, error in
                if let result = result, error == nil{
                    self.navigationController?.pushViewController(HomeViewController(email: result.user.email!, provider: .basic), animated: true)
                } else {
                    let alertController = UIAlertController(title: "Error", message: "Se ha producido un error al registrar al usuario", preferredStyle: UIAlertController.Style.alert)
                    alertController.addAction(UIAlertAction(title: "Aceptar", style: UIAlertAction.Style.default, handler: nil))
                    self.present(alertController, animated: true, completion: nil)
                }
            }
        }
    }
    
}

