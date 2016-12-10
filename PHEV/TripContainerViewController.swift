//
//  TripContainerViewController.swift
//  PHEV
//
//  Created by Aaron Striegel on 12/10/16.
//  Copyright © 2016 Claire Sonderman. All rights reserved.
//

import UIKit

class TripContainerViewController: UIViewController {

    @IBOutlet weak var picker: UISegmentedControl!
    @IBOutlet weak var AllContainer: UIView!
    @IBOutlet weak var FavoriteContainer: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.setTitle("All", forSegmentAt:0)
        picker.setTitle("Favorites", forSegmentAt: 1)
        let attr = NSDictionary(object: UIFont(name: "HelveticaNeue-Thin", size: 17.0)!, forKey: NSFontAttributeName as NSCopying)
        picker.setTitleTextAttributes(attr as [NSObject : AnyObject], for: .normal)
        // Do any additional setup after loading the view.
        for i in 0...picker.subviews.count-1 {
            if(picker.selectedSegmentIndex != i) {
                (picker.subviews[i]).tintColor = UIColor.lightGray
            }
            else {
                (picker.subviews[i]).tintColor = nil
            }
            picker.subviews[i].layer.borderColor = UIColor.lightGray.cgColor
            picker.subviews[i].layer.cornerRadius = 10.0
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func showTrips(_ sender: AnyObject) {
        if sender.selectedSegmentIndex == 0 {
            UIView.animate(withDuration: 0.5, animations: {
                self.AllContainer.alpha = 1
                self.FavoriteContainer.alpha = 0
            })
        } else {
            UIView.animate(withDuration: 0.5, animations: {
                self.AllContainer.alpha = 0
                self.FavoriteContainer.alpha = 1
            })
        }
        for i in 0...sender.subviews.count-1 {
            if(sender.selectedSegmentIndex != i) {
                (sender.subviews[i]).tintColor = UIColor.lightGray
            }
            else {
                (sender.subviews[i]).tintColor = nil
            }
            sender.subviews[i].layer.borderColor = UIColor.lightGray.cgColor
            sender.subviews[i].layer.cornerRadius = 10.0
        }
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
