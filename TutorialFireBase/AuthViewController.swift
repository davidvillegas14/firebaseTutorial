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
    }
    
    @IBAction func logInActionButton(_ sender: Any) {
    }
    
}

