//
//  menuCity.swift
//  Chic Chicken
//
//  Created by Tariq on 11/18/19.
//  Copyright © 2019 Tariq. All rights reserved.
//

import UIKit

class menuCity: UIViewController {

    @IBOutlet weak var cityTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        addTitleImage()
        
        cityTableView.delegate = self
        cityTableView.dataSource = self
        
        
        // Do any additional setup after loading the view.
    }

}
extension menuCity: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cityCell", for: indexPath) as! cityCell
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "branch", sender: nil)
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {

        let result = UIView()

        // recreate insets from existing ones in the table view
        let insets = tableView.separatorInset
        let width = tableView.bounds.width - insets.left - insets.right
        let sepFrame = CGRect(x: insets.left, y: -0.5, width: width, height: 0.5)

        // create layer with separator, setting color
        let sep = CALayer()
        sep.frame = sepFrame
        sep.backgroundColor = tableView.separatorColor?.cgColor
        result.layer.addSublayer(sep)

        return result
    }
}
