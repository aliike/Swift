//
//  ViewController.swift
//  AlertProject
//
//  Created by Ali Yetim on 16.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var password2Text: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var userNameText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signUpClick(_ sender: Any) {
        if userNameText.text == "" || passwordText.text == "" {
            makeAlert(title: "Error", message: "Kullanıcı adı veya Şifre boş kalamaz")
        }
        else {
            if passwordText.text != password2Text.text {
                makeAlert(title: "Error", message: "Şifreler Eşleşmiyor")
            }
            else{
                makeAlert(title: "Succeed", message: "Giriş Yapıldı!")
            }
        }
        
        
    
    }
    
    func makeAlert(title:String, message:String) {
        let alert = UIAlertController(title: title , message: message, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
}

