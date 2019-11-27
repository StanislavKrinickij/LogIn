//
//  ViewController.swift
//  LogIn
//
//  Created by Станислав Криницкий on 25.11.2019.
//  Copyright © 2019 Stanislav Krinickij. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    @IBOutlet var userButton: UIButton!
    @IBOutlet var passwordButton: UIButton!
    
    @IBAction func logInButton(_ button: UIButton) {
        
        guard userTextField.text?.isEmpty == false else { return }
        guard passwordTextField.text?.isEmpty == false else { return }
        
        if let _ = Double(userTextField.text!) {
        
        let alert = UIAlertController(title: "Wrong name", message: "Enter the correct name", preferredStyle: .alert)
        let okAchen = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            
            alert.addAction(okAchen)
            present(alert, animated: true, completion: nil)
            
        } else {
//            очищаем клавиатуру
            userTextField.text = nil
            passwordTextField.text = nil
        }
    }
    
    @IBAction func unwindLoginScreen(segue: UIStoryboardSegue) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc = segue.destination as? LogInViewController else { return }
            dvc.login = self.userTextField.text
        }
    
//        cскрываем клавиатуру по по тапу
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

extension ViewController: UITextFieldDelegate {
    
    //    скрываем клавиатуру по нажатию на done
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
