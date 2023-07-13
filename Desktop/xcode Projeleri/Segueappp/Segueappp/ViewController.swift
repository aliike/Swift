//
//  ViewController.swift
//  Segueappp
//
//  Created by Ali Yetim on 4.10.2022.
//

import UIKit

class ViewController: UIViewController {

    var userName = ""
    
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var myLabel: UILabel!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("viewdidload called")
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("viewdiddissappear called")
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("viewwilldissappear called")
    }
    override func viewWillAppear(_ animated: Bool) {
        print("viewwillappear called")
        nameText.text = ""
    }
    override func viewDidAppear(_ animated: Bool) {
        print("viewdidappear called")
    }


    @IBAction func nextClicked(_ sender: Any) {
        userName = nameText.text!
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.myName = userName
        }
    }
    
}


