//
//  myProfile.swift
//  Chic Chicken
//
//  Created by Tariq on 11/24/19.
//  Copyright © 2019 Tariq. All rights reserved.
//

import UIKit

class myProfile: UIViewController {

    @IBOutlet weak var viewToShadow: UIView!
    @IBOutlet weak var nameTf: UITextField!
    @IBOutlet weak var phoneTf: UITextField!
    @IBOutlet weak var emailTf: UITextField!
    @IBOutlet weak var passwordTf: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        passwordTf.isEnabled = false
        
        addTitleImage()
        dropShadow()
        // Do any additional setup after loading the view.
    }
    
    func dropShadow(scale: Bool = true) {
        viewToShadow.layer.masksToBounds = false
        viewToShadow.layer.shadowColor = UIColor.black.cgColor
        viewToShadow.layer.shadowOpacity = 0.3
        viewToShadow.layer.shadowOffset = CGSize(width: 1.5, height: 1.5)
        viewToShadow.layer.shadowRadius = 1
        viewToShadow.layer.shouldRasterize = true
        viewToShadow.layer.rasterizationScale = scale ? UIScreen.main.scale : 1
    }
    
    @IBAction func editPassword(_ sender: Any) {
        let alert = UIAlertController(title: "Edit Password", message: "", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        alert.addTextField(configurationHandler: { (oldPassword) in
            oldPassword.placeholder = "Old Password"
            oldPassword.isSecureTextEntry = true
        })
        alert.addTextField(configurationHandler: { (newPassword) in
            newPassword.placeholder = "New Password"
            newPassword.isSecureTextEntry = true
        })
        alert.addTextField(configurationHandler: { (ConfirmPassword) in
            ConfirmPassword.placeholder = "Confirm Password"
            ConfirmPassword.isSecureTextEntry = true
        })
        alert.addAction(UIAlertAction(title: "Edit", style: .destructive, handler: { (action: UIAlertAction) in
            guard let title = alert.textFields![2].text, !title.isEmpty else {return}
            self.passwordTf.text = title
        }))
        self.present(alert, animated: true, completion: nil)
    }

}
