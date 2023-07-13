//
//  ViewController.swift
//  UdemyCourse
//
//  Created by Ali Yetim on 7.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeLabelClicked(_ sender: Any) {
        imageView.image =  UIImage(named: "image2")
        
    }
    
}


