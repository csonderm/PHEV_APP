//
//  TripContentViewController.swift
//  PHEV
//
//  Created by Aaron Striegel on 12/7/16.
//  Copyright © 2016 Claire Sonderman. All rights reserved.
//

import UIKit

class TripContentViewController: UIPageViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate {

    var pages = [UINavigationController]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.dataSource = self
        self.delegate = self
        
        let pageControl = UIPageControl.appearance()
        pageControl.pageIndicatorTintColor = UIColor.lightGray
        pageControl.currentPageIndicatorTintColor = UIColor.blue
        pageControl.backgroundColor = UIColor.white
        
        self.pages = [
            self.storyboard!.instantiateViewController(withIdentifier: "MapNavigationController") as! UINavigationController,
            self.storyboard!.instantiateViewController(withIdentifier: "TripStatsNavigationController") as! UINavigationController
        ]
        
        let startingViewController = self.pages[1] as UIViewController
        self.setViewControllers([startingViewController], direction: .forward, animated: true, completion: nil)
        
        
        //self.navigationItem.setHidesBackButton(false, animated:true)
        //self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        let index = (self.pages as NSArray).index(of: viewController)
        
        // if currently displaying last view controller, return nil to indicate that there is no next view controller
        return (index == self.pages.count - 1 ? nil : self.pages[index + 1])
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        let index = (self.pages as NSArray).index(of: viewController)
        
        // if currently displaying first view controller, return nil to indicate that there is no previous view controller
        return (index == 0 ? nil : self.pages[index - 1])
    }
    
    
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return self.pages.count 
    }
    
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        return 0
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
