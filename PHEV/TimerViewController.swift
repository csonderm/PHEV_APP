//
//  TimerViewController.swift
//  PHEV
//
//  Created by Aaron Striegel on 12/14/16.
//  Copyright © 2016 Claire Sonderman. All rights reserved.
//

import UIKit

class TimerViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var TimerTable: UITableView!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var AddButton: UIButton!
    
    var Timers = ["December 20, 2016 10:00 AM"]
    let cellIdentifier = "Cell"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        AddButton.layer.borderColor = UIColor.gray.cgColor
        AddButton.layer.backgroundColor = UIColor.gray.cgColor
        AddButton.layer.borderWidth = 1.0
        AddButton.layer.cornerRadius = 5.0
        AddButton.layer.masksToBounds = true
        datePicker.minimumDate = NSDate() as Date
        
        TimerTable.delegate = self
        TimerTable.dataSource = self
        
    }
    @IBAction func AddButton(_ sender: AnyObject) {
        print("here")
        let dateformatter = DateFormatter()
        
        dateformatter.dateStyle = DateFormatter.Style.long
        dateformatter.timeStyle = DateFormatter.Style.short
        
        let newdate = self.datePicker.date
        let timer = dateformatter.string(from: newdate as Date)
        
        self.Timers.append(timer)
        self.TimerTable.beginUpdates()
        //var IndexPathOfLastRow = NSIndexPath(forRow: self.Timers.count - 1, section: 0)
        let ind = IndexPath(row: self.Timers.count - 1, section: 0)
        
        self.TimerTable.insertRows(at: [ind as IndexPath], with: .automatic)
        self.TimerTable.endUpdates()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Timers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = TimerTable.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        let row = indexPath.row
        cell.textLabel?.text = Timers[row]
        cell.textLabel?.font = UIFont(name: "HelveticaNeue-Thin", size: 17)
        return cell
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if (editingStyle == UITableViewCellEditingStyle.delete) {
            Timers.remove(at: indexPath.row)
            TimerTable.deleteRows(at: [indexPath], with: .fade)
        }
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
