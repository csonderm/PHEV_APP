//
//  LoginViewController.swift
//  PHEV
//
//  Created by Aaron Striegel on 11/11/16.
//  Copyright © 2016 Claire Sonderman. All rights reserved.
//

import UIKit
import QuartzCore

class LoginViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.setHidesBackButton(true, animated: false)
        self.view.backgroundColor = UIColor(patternImage: UIImage(named:"login.png")!)
        self.view.backgroundColor?.withAlphaComponent(0.3)
        self.AccountTextField.layer.borderColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1).cgColor
        self.AccountTextField.layer.borderWidth = 1.0
        self.AccountTextField.layer.cornerRadius = 5.0
        self.AccountTextField.layer.masksToBounds = true
        
        self.PinTextField.layer.borderColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1).cgColor
        self.PinTextField.layer.borderWidth = 1.0
        self.PinTextField.layer.cornerRadius = 5.0
        self.PinTextField.layer.masksToBounds = true
        
        self.LoginButton.layer.borderColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1).cgColor
        self.LoginButton.layer.borderWidth = 1.0
        self.LoginButton.layer.cornerRadius = 5.0
        self.AccountTextField.delegate = self
        self.PinTextField.delegate = self
        
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        // Hide the navigation bar on the this view controller
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        // Show the navigation bar on other view controllers
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    @IBOutlet weak var LoginButton: UIButton!
   
    @IBAction func LoginButton(_ sender: AnyObject) {
        self.performSegue(withIdentifier: "LoginSegue", sender: self)
        
    }
   // @IBOutlet weak var LoginButton: UIButton!

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func ForgotPinButton(_ sender: AnyObject) {
        let alert = UIAlertController(title: "Reset Pin", message: "Enter your Account Number to reset your pin. An email will be sent to your account.", preferredStyle: UIAlertControllerStyle.alert)
        alert.addTextField { (textField) in
            textField.placeholder = "Account #"
        }
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBOutlet weak var AccountTextField: UITextField!

    @IBOutlet weak var PinTextField: UITextField!
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        PinTextField.text = ""
        AccountTextField.text = ""
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
