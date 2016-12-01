//
//  TripViewController.swift
//  PHEV
//
//  Created by Aaron Striegel on 11/10/16.
//  Copyright © 2016 Claire Sonderman. All rights reserved.
//

import UIKit

class TripViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {

   // @IBOutlet weak var tripGraphic: UIImageView!
    //@IBOutlet weak var tripTableView: UITableView!
    
    let tripDates = ["December 1, 2016 10:05 PM", "December 1, 2016 8:32 AM", "November 30, 2016 4:55 PM"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: false)        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor(patternImage: UIImage(named:"atlantic-blurred-background.jpg")!)
       // tripTableView.dataSource = self
        //tripTableView.delegate = self
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tripDates.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cellIdentifier = "cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! TripTableViewCell
        
        let date = tripDates[indexPath.row]
        
        cell.dateLabel.text = date
        
        return cell
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
