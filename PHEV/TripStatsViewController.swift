//
//  TripStatsViewController.swift
//  PHEV
//
//  Created by Aaron Striegel on 12/7/16.
//  Copyright © 2016 Claire Sonderman. All rights reserved.
//

import UIKit

class TripStatsViewController: UIViewController {

    @IBOutlet weak var TripStatsGraphic: UIImageView!
    @IBOutlet weak var TripStatsGraphicView: UIView!
    @IBOutlet weak var StatsView2: UIView!
    @IBOutlet weak var StatsView1: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TripStatsGraphicView.layer.shadowColor = UIColor.black.cgColor
        TripStatsGraphicView.layer.shadowOpacity = 0.3
        TripStatsGraphicView.layer.shadowOffset = CGSize.zero
        TripStatsGraphicView.layer.shadowRadius = 8
        TripStatsGraphicView.layer.shouldRasterize = true
        
        StatsView1.layer.shadowColor = UIColor.black.cgColor
        StatsView1.layer.shadowOpacity = 0.3
        StatsView1.layer.shadowOffset = CGSize.zero
        StatsView1.layer.shadowRadius = 8
        StatsView1.layer.shouldRasterize = true
        
        StatsView2.layer.shadowColor = UIColor.black.cgColor
        StatsView2.layer.shadowOpacity = 0.3
        StatsView2.layer.shadowOffset = CGSize.zero
        StatsView2.layer.shadowRadius = 8
        StatsView2.layer.shouldRasterize = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
