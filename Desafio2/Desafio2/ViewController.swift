//
//  ViewController.swift
//  Desafio2
//
//  Created by Wolfgang Florian Covi on 27/01/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    @IBOutlet weak var registerButton: UIButton!
    @IBAction func registerSuccess(_ sender: Any) {
        print("Cadastro realizado com sucesso")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureComponents()
        checkPassword()
    }
    
    func configureComponents() {
        nameTextField.layer.borderWidth = 2
        nameTextField.layer.borderColor = UIColor.red.cgColor
        addressTextField.layer.borderWidth = 2
        addressTextField.layer.borderColor = UIColor.red.cgColor
        passwordTextField.layer.borderWidth = 2
        passwordTextField.layer.borderColor = UIColor.red.cgColor
        confirmPasswordTextField.layer.borderWidth = 2
        confirmPasswordTextField.layer.borderColor = UIColor.red.cgColor
        nameTextField.delegate = self
        addressTextField.delegate = self
        passwordTextField.delegate = self
        confirmPasswordTextField.delegate = self
        registerButton.isEnabled = false
    }
    
        func checkPassword() {
            if passwordTextField.text != "" && passwordTextField.text == confirmPasswordTextField.text {
                registerButton.isEnabled = true
                passwordTextField.layer.borderColor = UIColor.blue.cgColor
                confirmPasswordTextField.layer.borderColor = UIColor.blue.cgColor
            } else {
                registerButton.isEnabled = false
                passwordTextField.layer.borderColor = UIColor.red.cgColor
                confirmPasswordTextField.layer.borderColor = UIColor.red.cgColor
                }
            }
        }
    

extension ViewController: UITextFieldDelegate {
        func textFieldDidBeginEditing(_ textField: UITextField) {
            textField.layer.borderWidth = 2
            textField.layer.borderColor = UIColor.blue.cgColor
        }
    
        func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
            if passwordTextField.text != "" && passwordTextField.text == confirmPasswordTextField.text {
                registerButton.isEnabled = true
            } else {
                passwordTextField.layer.borderColor = UIColor.red.cgColor
                confirmPasswordTextField.layer.borderColor = UIColor.red.cgColor
                registerButton.isEnabled = false
            }
        }
    }
