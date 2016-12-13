//
//  VehicleViewController.swift
//  PHEV
//
//  Created by Aaron Striegel on 11/10/16.
//  Copyright © 2016 Claire Sonderman. All rights reserved.
//

import UIKit

class VehicleViewController: UIViewController {

    @IBOutlet weak var StatsView: UIView!
    @IBOutlet weak var FuelView: UIView!
    @IBOutlet weak var VehicleStatsButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        StatsView.layer.shadowColor = UIColor.black.cgColor
        StatsView.layer.shadowOpacity = 0.5
        StatsView.layer.shadowOffset = CGSize.zero
        StatsView.layer.shadowRadius = 8
        StatsView.layer.shouldRasterize = true
        
        FuelView.layer.shadowColor = UIColor.black.cgColor
        FuelView.layer.shadowOpacity = 0.5
        FuelView.layer.shadowOffset = CGSize.zero
        FuelView.layer.shadowRadius = 8
        FuelView.layer.shouldRasterize = true
        
        VehicleStatsButton.layer.borderColor = UIColor.gray.cgColor
        VehicleStatsButton.layer.backgroundColor = UIColor.gray.cgColor
        VehicleStatsButton.layer.borderWidth = 1.0
        VehicleStatsButton.layer.cornerRadius = 5.0
        VehicleStatsButton.layer.masksToBounds = true
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
