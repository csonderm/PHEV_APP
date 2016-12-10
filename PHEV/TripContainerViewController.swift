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
        // Do any additional setup after loading the view.
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
