//
//  RatingReportViewController.swift
//  PHEV
//
//  Created by Aaron Striegel on 12/11/16.
//  Copyright © 2016 Claire Sonderman. All rights reserved.
//

import UIKit

class RatingReportViewController: UIViewController {

    @IBOutlet weak var graphScrollview: UIScrollView!
    @IBOutlet weak var ratingGraph: UIImageView!
    
    @IBOutlet weak var ViewTipsButton: UIButton!
    @IBOutlet weak var ShareButton: UIButton!
    @IBOutlet weak var StatsView: UIView!
    @IBOutlet weak var ShareView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        StatsView.layer.shadowColor = UIColor.black.cgColor
        StatsView.layer.shadowOpacity = 0.5
        StatsView.layer.shadowOffset = CGSize.zero
        StatsView.layer.shadowRadius = 8
        StatsView.layer.shouldRasterize = true
        
        ShareView.layer.shadowColor = UIColor.black.cgColor
        ShareView.layer.shadowOpacity = 0.5
        ShareView.layer.shadowOffset = CGSize.zero
        ShareView.layer.shadowRadius = 8
        ShareView.layer.shouldRasterize = true
        
        ViewTipsButton.layer.borderColor = UIColor.darkGray.cgColor
        ViewTipsButton.layer.backgroundColor = UIColor.white.cgColor
        ViewTipsButton.layer.borderWidth = 1.0
        ViewTipsButton.layer.cornerRadius = 5.0
        ViewTipsButton.layer.masksToBounds = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func ViewTipsButton(_ sender: AnyObject) {
        UIView.animate(withDuration: 0.1, animations: {
            self.ViewTipsButton.transform = CGAffineTransform.identity.scaledBy(x: 0.9, y: 0.9)
            }, completion: { (finish) in
                UIView.animate(withDuration: 0.1, animations: {
                    self.ViewTipsButton.transform = CGAffineTransform.identity
                })
        })
        
    }
    
    @IBAction func ShareButton(_ sender: AnyObject) {
        UIView.animate(withDuration: 0.1, animations: {
            self.ShareButton.transform = CGAffineTransform.identity.scaledBy(x: 0.9, y: 0.9)
            }, completion: { (finish) in
                UIView.animate(withDuration: 0.1, animations: {
                    self.ShareButton.transform = CGAffineTransform.identity
                })
        })
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        // Hide the navigation bar on the this view controller
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        // Show the navigation bar on other view controllers
        self.navigationController?.setNavigationBarHidden(true, animated: true)
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
