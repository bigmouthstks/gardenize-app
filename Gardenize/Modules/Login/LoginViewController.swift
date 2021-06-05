//
//  ViewController.swift
//  Gardenize
//
//  Created by Benjamin Cáceres on 26-04-21.
//

import UIKit

// MARK: - LoginScreenViewController
class LoginViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton! {
        didSet {
            loginButton.layer.cornerRadius = 4
        }
    }
    
}

extension LoginViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
