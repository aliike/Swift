//
//  ViewController.swift
//  SegueApp
//
//  Created by Ali Yetim on 7.04.2022.
//

import UIKit

class ViewController: UIViewController {
    var userName = ""
    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var textBox: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func nextButton(_ sender: Any) {
        userName = textBox.text!
        
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.myName = userName
    }
        

}
    
    override func viewWillAppear(_ animated: Bool) {
        textBox.text = ""
    }
}
