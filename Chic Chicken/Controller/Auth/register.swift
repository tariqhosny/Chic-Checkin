//
//  register.swift
//  Chic Chicken
//
//  Created by Tariq on 11/17/19.
//  Copyright © 2019 Tariq. All rights reserved.
//

import UIKit

class register: UIViewController {

    @IBOutlet weak var nameTf: UITextField!
    @IBOutlet weak var phoneTf: UITextField!
    @IBOutlet weak var cityTf: UITextField!
    @IBOutlet weak var branchesTf: UITextField!
    @IBOutlet weak var emailTf: UITextField!
    @IBOutlet weak var passwordTf: UITextField!
    
    let branches = ["Alex", "Cairo", "Giza", "Mansoura", "Bani-Suif", "Minia", "Assut"]
    let branchesPicker = UIPickerView()
    let cityPicker = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cityTf.inputView = cityPicker
        branchesTf.inputView = branchesPicker
        
        cityPicker.delegate = self
        cityPicker.dataSource = self
        branchesPicker.delegate = self
        branchesPicker.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.isTranslucent = true
        navigationController?.view.backgroundColor = .clear
        navigationController?.navigationBar.barTintColor = UIColor.gray
    }

}
extension register: UIPickerViewDelegate, UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return branches.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return branches[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == cityPicker{
            cityTf.text = branches[row]
        }else{
            branchesTf.text = branches[row]
        }
    }
    
}
