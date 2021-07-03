//
//  ViewController.swift
//  Gardenize
//
//  Created by Benjamin Cáceres on 26-04-21.
//

import UIKit

// MARK: - LoginScreenViewController
final class LoginViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    
    @IBAction func signUpButtonPressed(_ sender: Any) {
        print("Sign Up button pressed")
        let storyboard = UIStoryboard(name: "SignUp", bundle: nil)
        let signUpViewController = storyboard.instantiateViewController(withIdentifier: "SignUpViewController") as! SignUpViewController
        let navigationController = self.navigationController
                
        navigationController?.pushViewController(signUpViewController, animated: true)
    }
    
    @IBOutlet weak var email: UILabel! {
        didSet {
            let emojiEmail = "Correo electrónico \u{1F4E7}"
            email.text = emojiEmail
        }
    }
    
    @IBOutlet weak var password: UILabel! {
        didSet {
            let emojiPassword = "Contraseña \u{1F511}"
            password.text = emojiPassword
        }
    }
    
}

// MARK: - LoginViewController Lifecycles
extension LoginViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAppearence()
    }
    
    override func viewWillAppear(_ animated: Bool){
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
}

// MARK: - LoginViewController
extension LoginViewController {
    func setupAppearence() {
        signUpButton.layer.cornerRadius = 4
        loginButton.layer.cornerRadius = 4
    }
}

