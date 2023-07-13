//
//  SecondViewController.swift
//  Segueappp
//
//  Created by Ali Yetim on 4.10.2022.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var myLabelSecond: UILabel!
    
    var myName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        nameLabel.text = myName

        
    }
    

   
}
