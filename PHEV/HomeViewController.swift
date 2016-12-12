//
//  HomeViewController.swift
//  PHEV
//
//  Created by Aaron Striegel on 11/10/16.
//  Copyright © 2016 Claire Sonderman. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var Rating: UIView!
    @IBOutlet weak var Battery: UIView!
    @IBOutlet weak var Status: UIView!
    @IBOutlet weak var Lock: UIView!
    @IBOutlet weak var LockLabel: UILabel!
    @IBOutlet weak var LockButton: UIButton!
    var lockIndex = 0
    var locks = [UIImage]()
    
    @IBOutlet weak var RatingButton: UIButton!
    @IBOutlet var BatteryImage: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addViewStyles()
        let lockImage = UIImage(named: "Lock-104.png")! as UIImage
        let unlockImage = UIImage(named: "Unlock-104.png")! as UIImage
        self.locks = [lockImage, unlockImage]
        LockButton.setBackgroundImage(self.locks[lockIndex], for: UIControlState.normal)
        LockLabel.text = "Click to Unlock"
    }
    
    func addViewStyles() {
        Rating.layer.shadowColor = UIColor.black.cgColor
        Rating.layer.shadowOpacity = 0.5
        Rating.layer.shadowOffset = CGSize.zero
        Rating.layer.shadowRadius = 8
        Rating.layer.shouldRasterize = true
        
        Battery.layer.shadowColor = UIColor.black.cgColor
        Battery.layer.shadowOpacity = 0.5
        Battery.layer.shadowOffset = CGSize.zero
        Battery.layer.shadowRadius = 8
        Battery.layer.shouldRasterize = true
        
        Status.layer.shadowColor = UIColor.black.cgColor
        Status.layer.shadowOpacity = 0.5
        Status.layer.shadowOffset = CGSize.zero
        Status.layer.shadowRadius = 8
        Status.layer.shouldRasterize = true
        
        Lock.layer.shadowColor = UIColor.black.cgColor
        Lock.layer.shadowOpacity = 0.5
        Lock.layer.shadowOffset = CGSize.zero
        Lock.layer.shadowRadius = 8
        Lock.layer.shouldRasterize = true
        
        RatingButton.layer.borderColor = UIColor.gray.cgColor
        RatingButton.layer.backgroundColor = UIColor.gray.cgColor
        RatingButton.layer.borderWidth = 1.0
        RatingButton.layer.cornerRadius = 5.0
        RatingButton.layer.masksToBounds = true
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
