//
//  ControlViewController.swift
//  PHEV
//
//  Created by Aaron Striegel on 12/13/16.
//  Copyright © 2016 Claire Sonderman. All rights reserved.
//

import UIKit

class ControlViewController: UIViewController {
    @IBOutlet weak var LockDoorsView: UIView!
    @IBOutlet weak var ACView: UIView!
    @IBOutlet weak var ElectricView: UIView!
    @IBOutlet weak var LockLabel: UILabel!
    @IBOutlet weak var ACLabel: UILabel!
    @IBOutlet weak var ChargeLabel: UILabel!
    @IBOutlet weak var LockButton: UIButton!
    @IBOutlet weak var ACButton: UIButton!
    @IBOutlet weak var ChargeButton: UIButton!
    @IBOutlet weak var ViewOpenButton: UIButton!
    @IBOutlet weak var FindStationButton: UIButton!
    @IBOutlet weak var ChargeTimerButton: UIButton!
    @IBOutlet weak var ACTimerButton: UIButton!
    var lockIndex = 0
    var locks = [UIImage]()
    var ACIndex = 0
    var ACs = [UIImage]()
    var chargeIndex = 0
    var charges = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        LockDoorsView.layer.shadowColor = UIColor.black.cgColor
        LockDoorsView.layer.shadowOpacity = 0.5
        LockDoorsView.layer.shadowOffset = CGSize.zero
        LockDoorsView.layer.shadowRadius = 8
        LockDoorsView.layer.shouldRasterize = true
        
        ACView.layer.shadowColor = UIColor.black.cgColor
        ACView.layer.shadowOpacity = 0.5
        ACView.layer.shadowOffset = CGSize.zero
        ACView.layer.shadowRadius = 8
        ACView.layer.shouldRasterize = true
        
        ElectricView.layer.shadowColor = UIColor.black.cgColor
        ElectricView.layer.shadowOpacity = 0.5
        ElectricView.layer.shadowOffset = CGSize.zero
        ElectricView.layer.shadowRadius = 8
        ElectricView.layer.shouldRasterize = true
        
        ViewOpenButton.layer.borderColor = UIColor.gray.cgColor
        ViewOpenButton.layer.backgroundColor = UIColor.gray.cgColor
        ViewOpenButton.layer.borderWidth = 1.0
        ViewOpenButton.layer.cornerRadius = 5.0
        ViewOpenButton.layer.masksToBounds = true
        
        ChargeTimerButton.layer.borderColor = UIColor.gray.cgColor
        ChargeTimerButton.layer.backgroundColor = UIColor.gray.cgColor
        ChargeTimerButton.layer.borderWidth = 1.0
        ChargeTimerButton.layer.cornerRadius = 5.0
        ChargeTimerButton.layer.masksToBounds = true
        
        ACTimerButton.layer.borderColor = UIColor.gray.cgColor
        ACTimerButton.layer.backgroundColor = UIColor.gray.cgColor
        ACTimerButton.layer.borderWidth = 1.0
        ACTimerButton.layer.cornerRadius = 5.0
        ACTimerButton.layer.masksToBounds = true
        
        FindStationButton.layer.borderColor = UIColor.gray.cgColor
        FindStationButton.layer.backgroundColor = UIColor.gray.cgColor
        FindStationButton.layer.borderWidth = 1.0
        FindStationButton.layer.cornerRadius = 5.0
        FindStationButton.layer.masksToBounds = true
        
        let lockImage = UIImage(named: "Lock-104.png")! as UIImage
        let unlockImage = UIImage(named: "Unlock-104.png")! as UIImage
        self.locks = [lockImage, unlockImage]
        LockButton.setBackgroundImage(self.locks[lockIndex], for: UIControlState.normal)
        LockLabel.text = "Click to Unlock"
        
        let ACOnImage = UIImage(named: "ac-icon.png")! as UIImage
        let ACOffImage = UIImage(named: "ac-icon-off.png")! as UIImage
        self.ACs = [ACOnImage, ACOffImage]
        ACButton.setBackgroundImage(self.ACs[ACIndex], for: UIControlState.normal)
        ACLabel.text = "Click to turn off AC"
        
        let chargeImage = UIImage(named: "charged.png")! as UIImage
        let notChargeImage = UIImage(named: "uncharged.png")! as UIImage
        self.charges = [chargeImage, notChargeImage]
        ChargeButton.setBackgroundImage(self.charges[chargeIndex], for: UIControlState.normal)
        ChargeLabel.text = "Click to Stop Charge"
        
    }

    @IBAction func LockButton(_ sender: AnyObject) {
        UIView.animate(withDuration: 0.1, animations: {
            self.LockButton.transform = CGAffineTransform.identity.scaledBy(x: 0.9, y: 0.9)
            }, completion: { (finish) in
                UIView.animate(withDuration: 0.1, animations: {
                    self.LockButton.transform = CGAffineTransform.identity
                })
        })
        
        if (lockIndex == 0){
            lockIndex = 1
            LockButton.setBackgroundImage(self.locks[lockIndex], for: UIControlState.normal)
            LockLabel.text = "Click to Lock"
        }
        else {
            lockIndex = 0
            LockButton.setBackgroundImage(self.locks[lockIndex], for: UIControlState.normal)
            LockLabel.text = "Click to Unlock"
        }
    }
    
    @IBAction func ACButton(_ sender: AnyObject) {
        UIView.animate(withDuration: 0.1, animations: {
            self.ACButton.transform = CGAffineTransform.identity.scaledBy(x: 0.9, y: 0.9)
            }, completion: { (finish) in
                UIView.animate(withDuration: 0.1, animations: {
                    self.ACButton.transform = CGAffineTransform.identity
                })
        })
        
        if (ACIndex == 0){
            ACIndex = 1
            ACButton.setBackgroundImage(self.ACs[ACIndex], for: UIControlState.normal)
            ACLabel.text = "Click to start AC"
        }
        else {
            ACIndex = 0
            ACButton.setBackgroundImage(self.ACs[ACIndex], for: UIControlState.normal)
            ACLabel.text = "Click to stop AC"
        }
    }
    
    @IBAction func ChargeButton(_ sender: AnyObject) {
        UIView.animate(withDuration: 0.1, animations: {
            self.ChargeButton.transform = CGAffineTransform.identity.scaledBy(x: 0.9, y: 0.9)
            }, completion: { (finish) in
                UIView.animate(withDuration: 0.1, animations: {
                    self.ChargeButton.transform = CGAffineTransform.identity
                })
        })
        
        if (chargeIndex == 0){
            chargeIndex = 1
            ChargeButton.setBackgroundImage(self.charges[chargeIndex], for: UIControlState.normal)
            ChargeLabel.text = "Click to Start Charge"
        }
        else {
            chargeIndex = 0
            ChargeButton.setBackgroundImage(self.charges[chargeIndex], for: UIControlState.normal)
            ChargeLabel.text = "Click to Stop Charge"
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        // Hide the navigation bar on the this view controller
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        // Show the navigation bar on other view controllers
        self.navigationController?.setNavigationBarHidden(false, animated: true)
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
