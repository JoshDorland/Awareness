//
//  ViewController.swift
//  Awareness
//
//  Created by Josh Dorland on 2022-01-06.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor(red: 1.0, green: 0.95, blue: 0.74, alpha: 1.0)
        
        let title = UILabel(frame: CGRect(x: 128.31, y: 187, width: 241.69, height: 51))
        title.text = constants().appName
        title.textColor = UIColor(red: CGFloat(constants().appDkGreen[0]), green: CGFloat(constants().appDkGreen[1]), blue: CGFloat(constants().appDkGreen[2]), alpha: CGFloat(constants().appDkGreen[3]))
        title.font = UIFont(name: "FuroMano", size: 43.0)
        
        view.addSubview(title)
    }


}

