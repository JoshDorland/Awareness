//
//  ViewController.swift
//  Awareness
//
//  Created by Josh Dorland on 2022-01-06.
//

import UIKit

class ViewController: UIViewController {
    
    let dividerView: UIView = {
        let topImageContainerView = UIView()
        
        //Properties
        topImageContainerView.backgroundColor = .blue
        //For testing -> topImageContainerView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        
        //Enables autolayour for dividerView
        topImageContainerView.translatesAutoresizingMaskIntoConstraints = false
        return topImageContainerView
        
    }()
    
    let titleView: UILabel = {
        let titleView = UILabel()
        
        //Properties
        titleView.text = constants().appName
        titleView.textAlignment = .center
        titleView.font = UIFont(name: "Quicksand-Bold", size: 43.0)
        titleView.textColor = constants().appDkGreen()
        
        //Enables autolayout for our text size
        titleView.translatesAutoresizingMaskIntoConstraints = false
        return titleView
    }()
    
    
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
        view.translatesAutoresizingMaskIntoConstraints = false
                
        
        //Call the titleLabel
        view.addSubview(dividerView)
        
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
    }
}

