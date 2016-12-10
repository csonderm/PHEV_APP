//
//  TripViewController.swift
//  PHEV
//
//  Created by Aaron Striegel on 12/9/16.
//  Copyright © 2016 Claire Sonderman. All rights reserved.
//

import UIKit

class TripViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var TripsTable: UITableView!
    
    var tripDates = ["December 1, 2016 10:05 PM", "December 1, 2016 10:00 AM", "November 30, 2016 4:55 PM"]
    let cellIdentifier = "Cell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TripsTable.delegate = self
        TripsTable.dataSource = self

        // Do any additional setup after loading the view.
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
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = TripsTable.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        let row = indexPath.row
        cell.textLabel?.text = tripDates[row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if (editingStyle == UITableViewCellEditingStyle.delete) {
            tripDates.remove(at: indexPath.row)
            TripsTable.deleteRows(at: [indexPath], with: .fade)
        }
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
