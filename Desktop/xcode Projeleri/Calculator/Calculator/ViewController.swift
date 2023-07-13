//
//  ViewController.swift
//  Calculator
//
//  Created by Ali Yetim on 4.10.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //Text fields
    @IBOutlet weak var firstText: UITextField!
    @IBOutlet weak var secondText: UITextField!
    var result = 0
    
    //Buttons
    @IBAction func sumClicked(_ sender: Any) {
        if let firstNumber = Int(firstText.text!){
            if let secondNumber = Int(secondText.text!){
                
                result = firstNumber+secondNumber
                
                resultLabel.text = String(result)
                
            }
        }
        
        
        
    }
    
    
    
    @IBAction func minusClicked(_ sender: Any) {
        if let firstNumber = Int(firstText.text!){
            if let secondNumber = Int(secondText.text!){
                
                result = firstNumber-secondNumber
                
                resultLabel.text = String(result)
                
            }
        }
    }
    
    
    @IBAction func multiplyClicked(_ sender: Any) {
        if let firstNumber = Int(firstText.text!){
            if let secondNumber = Int(secondText.text!){
                
                result = firstNumber*secondNumber
                
                resultLabel.text = String(result)
                
            }
        }
    }
    
    
    @IBAction func divideClicked(_ sender: Any) {
        if let firstNumber = Int(firstText.text!){
            if let secondNumber = Int(secondText.text!){
                
                result = firstNumber/secondNumber
                
                resultLabel.text = String(result)
                
            }
        }
    }
    //Label
    @IBOutlet weak var resultLabel: UILabel!
}

