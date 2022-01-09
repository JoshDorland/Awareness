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
        
        let title = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
        title.text = "Awareness"
        title.textColor = .black
        
        let titletwo = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
        titletwo.backgroundColor = .white

        self.view.addSubview(titletwo)
        self.view.addSubview(title)
    }


}

