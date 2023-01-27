//
//  ViewController.swift
//  RegistrationForm
//
//  Created by Svilen Petrov on 27/01/2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.emailTextField.delegate = self
        self.usernameTextField.delegate = self
        self.passwordTextField.delegate = self
        self.confirmPasswordTextField.delegate = self
        // Do any additional setup after loading the view.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case self.emailTextField:
            self.usernameTextField.becomeFirstResponder()
        case self.usernameTextField:
            self.passwordTextField.becomeFirstResponder()
        case self.passwordTextField:
            self.confirmPasswordTextField.becomeFirstResponder()
        case self.confirmPasswordTextField:
            self.confirmPasswordTextField.resignFirstResponder()
        default:
            break
        }
        return true
    }
    @IBAction func nextButtonTapped(_ sender: UIButton) {
        guard let emailText = self.emailTextField.text,
              let usernameText = self.usernameTextField.text,
              let passwordText = self.passwordTextField.text,
              let conformPasswordText = self.confirmPasswordTextField.text else {
            return
        }
        
        guard emailText.count >= 3 && emailText.count <= 50 else {
            self.emailTextField.backgroundColor = .red.withAlphaComponent(0.3)
            return
        }
        
        guard usernameText.count >= 3 && usernameText.count <= 20 && usernameText.containsWhitespaces == false else {
            self.usernameTextField.backgroundColor = .red.withAlphaComponent(0.3)
            return
        }
        guard passwordText.count >= 6 && passwordText.count <= 32 && passwordText.containsWhitespaces == false else{
            self.passwordTextField.backgroundColor = .red.withAlphaComponent(0.3)
            return
        }
        
        guard conformPasswordText.count >= 6 && conformPasswordText.count <= 32 && conformPasswordText.containsWhitespaces == false else{
            self.confirmPasswordTextField.backgroundColor = .red.withAlphaComponent(0.3)
            return
        }
        
    }

}
//MARK: - UITextFieldDelegate
extension ViewController: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.backgroundColor = .white
    }
}


extension String {
    var containsWhitespaces: Bool {
        return CharacterSet.whitespaces.isDisjoint(with: CharacterSet(charactersIn: self))
        
    }
}

