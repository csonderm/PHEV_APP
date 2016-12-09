//
//  ViewController.swift
//  PHEV
//
//  Created by Aaron Striegel on 11/1/16.
//  Copyright © 2016 Claire Sonderman. All rights reserved.
//

import UIKit
import LocalAuthentication
import QuartzCore

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor(patternImage: UIImage(named:"login.png")!)
        
        self.TouchIDButton.layer.borderColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1).cgColor
        self.TouchIDButton.layer.borderWidth = 1.0
        self.TouchIDButton.layer.cornerRadius = 5.0
    
        self.ManualLoginButton.layer.borderColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1).cgColor
        self.ManualLoginButton.layer.borderWidth = 1.0
        self.ManualLoginButton.layer.cornerRadius = 5.0
        
        self.DemoButton.layer.borderColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1).cgColor
        self.DemoButton.layer.borderWidth = 1.0
        self.DemoButton.layer.cornerRadius = 5.0    }
    
    override func viewWillAppear(_ animated: Bool) {
        // Hide the navigation bar on the this view controller
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        // Show the navigation bar on other view controllers
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    @IBAction func beginTouchIDAuthCheck(_ sender: AnyObject) {
        let authContext:LAContext = LAContext()
        var error:NSError?
    
        
        //Is Touch ID hardware available & configured?
        if(authContext.canEvaluatePolicy(LAPolicy.deviceOwnerAuthenticationWithBiometrics, error:&error))
        {
            //Perform Touch ID auth
            authContext.evaluatePolicy(LAPolicy.deviceOwnerAuthenticationWithBiometrics, localizedReason: "Testing Touch ID", reply: {(wasSuccessful:Bool, error:Error?) -> Void in
                
                if(wasSuccessful)
                {
                    //User authenticated
                    self.AuthResult(authError: error)
                }
                else
                {
                    //There are a few reasons why it can fail, we'll write them out to the user in the label
                    self.AuthResult(authError: error)
                }
 
            } )
        }
        else
        {
            //Missing the hardware or Touch ID isn't configured
            self.AuthResult(authError: error)
            self.performSegue(withIdentifier: "regularLoginSegue", sender: self)
        }    }

    @IBOutlet weak var ManualLoginButton: UIButton!
    @IBOutlet weak var TouchIDButton: UIButton!
    @IBOutlet weak var DemoButton: UIButton!
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func AuthResult(authError:Error?)
    {
        DispatchQueue.main.async {
            if authError != nil
            {
                //self.lblAuthResult.textColor = UIColor.red
                //self.lblAuthResult.text = possibleError.localizedDescription
                self.performSegue(withIdentifier: "regularLoginSegue", sender: self)            }
            else
            {
                //self.lblAuthResult.textColor = UIColor.green
                //self.lblAuthResult.text = "Authentication successful."
                self.performSegue(withIdentifier: "passedTouchIDSegue", sender: self)
            }
        }
        
    }
}

