//
//  ViewController.swift
//  swift_tutorial_keyboard
//
//  Created by 早川マイケル on 2021/01/28.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{

    @IBOutlet weak var logoImageView: UIImageView!
    
    @IBOutlet weak var userNameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!

    @IBOutlet weak var userNameLabel: UILabel!
    
    @IBOutlet weak var passwordLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 
        userNameTextField.delegate = self
        passwordTextField.delegate = self
        
    }

    
    @IBAction func login(_ sender: Any) {
        
        logoImageView.image = UIImage(named: "loginOK")
        
        userNameLabel.text = "username:" + userNameTextField.text!
        passwordLabel.text = "password:" + passwordTextField.text!
        
    }
    
    // タッチでキーボードを閉じる
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    // リターンキーを押したときにキーボードを閉じる
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        // キーボードが閉じる
        textField.resignFirstResponder()
        return true
    }

}

