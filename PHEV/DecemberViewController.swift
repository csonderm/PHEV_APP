//
//  DecemberViewController.swift
//  PHEV
//
//  Created by Aaron Striegel on 12/13/16.
//  Copyright © 2016 Claire Sonderman. All rights reserved.
//

import UIKit

class DecemberViewController: UIViewController {
    @IBOutlet weak var ConsumptionView: UIView!

    @IBOutlet weak var MileageView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        ConsumptionView.layer.shadowColor = UIColor.black.cgColor
        ConsumptionView.layer.shadowOpacity = 0.5
        ConsumptionView.layer.shadowOffset = CGSize.zero
        ConsumptionView.layer.shadowRadius = 8
        ConsumptionView.layer.shouldRasterize = true
        
        MileageView.layer.shadowColor = UIColor.black.cgColor
        MileageView.layer.shadowOpacity = 0.5
        MileageView.layer.shadowOffset = CGSize.zero
        MileageView.layer.shadowRadius = 8
        MileageView.layer.shouldRasterize = true
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
