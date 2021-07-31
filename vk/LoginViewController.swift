//
//  LoginViewController.swift
//  vk
//
//  Created by Roman on 30.07.2021.
//

import UIKit

//login = 111
//password = 111

class LoginViewController: UIViewController {

    @IBOutlet var scrollView: UIScrollView!
    
    @IBOutlet var loginTextField: UITextField!
    
    @IBOutlet var passwordTextField: UITextField!
    
    @IBAction func loggingButtonAction(_ sender: Any) {
        checkAutoData()
        
    }
    
    func checkAutoData() {
        let login = loginTextField.text ?? ""
        let password = passwordTextField.text ?? ""
        
        if !(login.isEmpty && password.isEmpty) && (login == "111" && password == "111") {
            print("Autorisation")
        }
        else{
            print("Error")
        }
    }
    

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
    }
    



}
