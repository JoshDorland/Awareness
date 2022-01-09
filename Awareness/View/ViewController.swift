//
//  ViewController.swift
//  Awareness
//
//  Created by Josh Dorland on 2022-01-06.
//

import UIKit

class ViewController: UIViewController {
    
    var titleField: UILabel!
    var errorField: UILabel!
    var dontHaveAccount: UILabel!
    
    var emailField: UITextField!
    var passwordField: UITextField!
    
    var loginButton = UIButton(type: .custom)
    var forgotPassButton = UIButton(type: .custom)
    var signUpButton = UIButton(type: .custom)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Setting background color
        view.backgroundColor = constants().appBaige()
                
    }
}

