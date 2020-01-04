//
//  ViewController.swift
//  Chic Chicken
//
//  Created by Tariq on 11/17/19.
//  Copyright © 2019 Tariq. All rights reserved.
//

import UIKit

class login: UIViewController {
    
    @IBOutlet weak var emailTf: UITextField!
    @IBOutlet weak var passwordTf: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.isTranslucent = true
        navigationController?.view.backgroundColor = .clear
        navigationController?.navigationBar.barTintColor = UIColor.gray
    }

}

