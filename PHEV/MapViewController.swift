//
//  MapViewController.swift
//  PHEV
//
//  Created by Aaron Striegel on 12/7/16.
//  Copyright © 2016 Claire Sonderman. All rights reserved.
//

import UIKit

class MapViewController: UIViewController {

    @IBOutlet weak var RouteView: UIView!
    @IBOutlet weak var MapView: UIView!
    @IBOutlet weak var MapImage: UIImageView!
    @IBOutlet weak var StarButton: UIButton!
    @IBOutlet weak var ShareButton: UIButton!
    var toPass: Int = 0
    var starIndex = 0
    var stars = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        MapView.layer.shadowColor = UIColor.black.cgColor
        MapView.layer.shadowOpacity = 0.3
        MapView.layer.shadowOffset = CGSize.zero
        MapView.layer.shadowRadius = 8
        MapView.layer.shouldRasterize = true
        
        RouteView.layer.shadowColor = UIColor.black.cgColor
        RouteView.layer.shadowOpacity = 0.3
        RouteView.layer.shadowOffset = CGSize.zero
        RouteView.layer.shadowRadius = 8
        
        
        RouteView.layer.shouldRasterize = true
        let starImage = UIImage(named: "Star-100.png")! as UIImage
        let starFilledImage = UIImage(named: "Star Filled-100.png")! as UIImage
        self.stars = [starImage, starFilledImage]
        
        
        starIndex = toPass
        StarButton.setBackgroundImage(self.stars[starIndex], for: UIControlState.normal)
    }

    @IBAction func StarButton(_ sender: AnyObject) {
        UIView.animate(withDuration: 0.1, animations: {
            self.StarButton.transform = CGAffineTransform.identity.scaledBy(x: 0.9, y: 0.9)
            }, completion: { (finish) in
                UIView.animate(withDuration: 0.1, animations: {
                    self.StarButton.transform = CGAffineTransform.identity
                })
        })
        
        if (starIndex == 0){
            starIndex = 1
            StarButton.setBackgroundImage(self.stars[starIndex], for: UIControlState.normal)
        }
        else {
            starIndex = 0
            StarButton.setBackgroundImage(self.stars[starIndex], for: UIControlState.normal)
        }
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
