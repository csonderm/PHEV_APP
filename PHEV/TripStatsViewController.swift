//
//  TripStatsViewController.swift
//  PHEV
//
//  Created by Aaron Striegel on 12/7/16.
//  Copyright © 2016 Claire Sonderman. All rights reserved.
//

import UIKit

class TripStatsViewController: UIViewController {

    @IBOutlet weak var Speed: UIView!
    @IBOutlet weak var Distance: UIView!
    @IBOutlet weak var Duration: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        Speed.layer.shadowColor = UIColor.black.cgColor
        Speed.layer.shadowOpacity = 0.3
        Speed.layer.shadowOffset = CGSize.zero
        Speed.layer.shadowRadius = 8
        Speed.layer.shouldRasterize = true
        
        Distance.layer.shadowColor = UIColor.black.cgColor
        Distance.layer.shadowOpacity = 0.3
        Distance.layer.shadowOffset = CGSize.zero
        Distance.layer.shadowRadius = 8
        Distance.layer.shouldRasterize = true
        
        Duration.layer.shadowColor = UIColor.black.cgColor
        Duration.layer.shadowOpacity = 0.3
        Duration.layer.shadowOffset = CGSize.zero
        Duration.layer.shadowRadius = 8
        Duration.layer.shouldRasterize = true
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
