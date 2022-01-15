//
//  ViewController.swift
//  Awareness
//
//  Created by Josh Dorland on 2022-01-06.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    
    let dividerView: UIView = {
        let topImageContainerView = UIView()
        
        //Properties
        //topImageContainerView.backgroundColor = .blue
        //For testing -> topImageContainerView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        
        //Enables autolayour for dividerView
        topImageContainerView.translatesAutoresizingMaskIntoConstraints = false
        return topImageContainerView
        
    }()
    
    let titleView: UILabel = {
        let titleView = UILabel()
        
        //Properties
//        titleView.text = constants().appName
        titleView.textAlignment = .center
//      titleView.font = UIFont(name: "Quicksand-Bold", size: 43.0)
//        titleView.textColor = constants().appDkGreen()
        
        //Another way for text
        let attributedText: [NSAttributedString.Key: Any] = [
            .font: UIFont(name: "Quicksand-Bold", size: 43.0)!,
            .foregroundColor: constants().appDkGreen()
        ]
        
        let attributedTitle = NSAttributedString(string: constants().appName, attributes: attributedText)
        
        titleView.attributedText = attributedTitle
        
        //Enables autolayout for our text size
        titleView.translatesAutoresizingMaskIntoConstraints = false
        return titleView
    }()
    
    let emailFieldView: UITextField = {
        let emailField = UITextField()
        emailField.backgroundColor = constants().appLtGreen()
        emailField.placeholder = "Email"
        emailField.borderStyle =  UITextField.BorderStyle.roundedRect
        
        emailField.translatesAutoresizingMaskIntoConstraints = false
        return emailField
    }()
    
    let passwordFieldView: UITextField = {
        let passwordField = UITextField()
        passwordField.backgroundColor = constants().appLtGreen()
        passwordField.placeholder = "Password"
        passwordField.borderStyle =  UITextField.BorderStyle.roundedRect

        passwordField.translatesAutoresizingMaskIntoConstraints = false
        return passwordField
    }()
    
    let forgotPassView: UIButton = {
        let forgotPass = UIButton(type: .custom)
        forgotPass.setTitleColor(.systemBlue, for: .normal)
        
        let attributedText: [NSAttributedString.Key: Any] = [
            .font: UIFont(name: "Quicksand-Regular", size: 14.0)!,
            .foregroundColor: UIColor.systemBlue
        ]
        
        let attributedTitle = NSAttributedString(string: "Forgot Password?", attributes: attributedText)
        
        forgotPass.setAttributedTitle(attributedTitle, for: .normal)
        forgotPass.sizeToFit()
        
        forgotPass.translatesAutoresizingMaskIntoConstraints = false
        return forgotPass
    }()
    
    let loginButtonView: UIButton = {
        let loginButton = UIButton(type: .custom)
        loginButton.backgroundColor = .black
        loginButton.setTitle("Log In", for: .normal)
        
        loginButton.frame = CGRect(x: 100, y: 100, width: 40, height: 50)
                        
//        let attributedText: [NSAttributedString.Key: Any] = [
//            .font: UIFont(name: "Quicksand-Bold", size: 10.0)!
//        ]
//
//        let attributedTitle = NSAttributedString(string: "Log In", attributes: attributedText)
//
//        loginButton.setAttributedTitle(attributedTitle, for: .normal)
//        loginButton.sizeToFit()
        
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        return loginButton
    }()
    
    
    var errorField: UILabel!
    var dontHaveAccount: UILabel!
    
    var passwordField: UITextField!
    
    var loginButton = UIButton(type: .custom)
    var signUpButton = UIButton(type: .custom)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Setting background color
        view.backgroundColor = constants().appBaige()
        view.translatesAutoresizingMaskIntoConstraints = false
                
        
        //Call the titleLabel
        view.addSubview(dividerView)
        view.addSubview(emailFieldView)
        view.addSubview(passwordFieldView)
        view.addSubview(forgotPassView)
        view.addSubview(loginButton)
        
        layoutView()
    }
    
    private func layoutView() {
        
        dividerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        
        dividerView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        
        //Leading and trailing is better to use because different languages read left to righ or right to left and therefore this will be aware of that
        dividerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        dividerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        dividerView.addSubview(titleView)
//        topImageContainerView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        
//        topImageContainerView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        dividerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        
        //Title Constraints
        titleView.centerXAnchor.constraint(equalTo: dividerView.centerXAnchor).isActive = true
        titleView.centerYAnchor.constraint(equalTo: dividerView.centerYAnchor).isActive = true
        titleView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        titleView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        //Email text field constraint
        emailFieldView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        emailFieldView.bottomAnchor.constraint(equalTo: dividerView.bottomAnchor, constant: -10).isActive = true
        emailFieldView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.80).isActive = true
        
        //Password text field constraint
        passwordFieldView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        passwordFieldView.topAnchor.constraint(equalTo: dividerView.bottomAnchor, constant: 10).isActive = true
        passwordFieldView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.80).isActive = true
        
        //Forgot Password Label Constraints
        forgotPassView.leadingAnchor.constraint(equalTo: passwordFieldView.leadingAnchor).isActive = true
        forgotPassView.topAnchor.constraint(equalTo: passwordFieldView.bottomAnchor, constant: 10).isActive = true
        
        //Login Button Constraints

    }
}

