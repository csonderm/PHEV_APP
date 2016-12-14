//
//  ViewCarViewController.swift
//  PHEV
//
//  Created by Aaron Striegel on 12/14/16.
//  Copyright © 2016 Claire Sonderman. All rights reserved.
//

import UIKit

class ViewCarViewController: UIViewController {

    @IBOutlet weak var StatsView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        StatsView.layer.shadowColor = UIColor.black.cgColor
        StatsView.layer.shadowOpacity = 0.5
        StatsView.layer.shadowOffset = CGSize.zero
        StatsView.layer.shadowRadius = 8
        StatsView.layer.shouldRasterize = true
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
