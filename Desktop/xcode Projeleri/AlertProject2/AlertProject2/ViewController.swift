//
//  ViewController.swift
//  AlertProject2
//
//  Created by Ali Yetim on 4.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameTextx: UITextField!
    
    @IBOutlet weak var passwordTextx: UITextField!
    
    @IBOutlet weak var passwordConfirmTextx: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

  
    func createAlert(message: String,title: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "Back", style: UIAlertAction.Style.cancel, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
    
    
    //Buttons
    @IBAction func signUpClicked(_ sender: Any) {
        if usernameTextx.text == "" {
            createAlert(message : "Username cannot be empty!",title :"Error")
        }else if passwordTextx.text == "" {
            createAlert(message:"Password cannot be empty!",title:"Error")
        }else if passwordConfirmTextx.text == "" {
            createAlert(message:"You should confirm your password!",title:"Error")
        }else if passwordTextx.text != passwordConfirmTextx.text {
            createAlert(message: "Please check your password!",title:"Error")
        }
        else {
            createAlert(message: "Successfully signed in", title: "Success")
        }
        
        
    }
}

