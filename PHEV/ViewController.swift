//
//  ViewController.swift
//  PHEV
//
//  Created by Aaron Striegel on 11/1/16.
//  Copyright © 2016 Claire Sonderman. All rights reserved.
//

import UIKit
import LocalAuthentication

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor(patternImage: UIImage(named:"BackgroundOption-2.png")!)
    }
    
    @IBOutlet weak var AuthResultLbl: UILabel!
    
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
                    self.writeOutAuthResult(authError: error)
                }
                else
                {
                    //There are a few reasons why it can fail, we'll write them out to the user in the label
                    self.writeOutAuthResult(authError: error)
                }
 
            } )
        }
        else
        {
            //Missing the hardware or Touch ID isn't configured
            self.writeOutAuthResult(authError: error)
            self.performSegue(withIdentifier: "regularLoginSegue", sender: self)
        }    }

    @IBOutlet weak var lblAuthResult: UILabel!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func writeOutAuthResult(authError:Error?)
    {
        DispatchQueue.main.async {
            if let possibleError = authError
            {
                self.lblAuthResult.textColor = UIColor.red
                self.lblAuthResult.text = possibleError.localizedDescription
                self.performSegue(withIdentifier: "regularLoginSegue", sender: self)            }
            else
            {
                self.lblAuthResult.textColor = UIColor.green
                self.lblAuthResult.text = "Authentication successful."
                self.performSegue(withIdentifier: "passedTouchIDSegue", sender: self)
            }
        }
        
    }
}

