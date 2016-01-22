//
//  HomeTab.swift
//  FabulousMiniProject
//
//  Created by Sinclair on 1/22/16.
//  Copyright © 2016 Sinclair. All rights reserved.
//

import UIKit

class HomeTab: UIViewController, UITableViewDelegate {
    
    @IBOutlet weak var ritualsTable: UITableView!
    
    var rituals = [Ritual(timeOfDay: "Morning", startTime: 830, tasks: ["Write To-Do","Today is a great day!","East a Great Breakfast","Feed Emma","Exercise", "Party!"]), Ritual(timeOfDay: "Afternoon", startTime: 1430, tasks: ["Exercise some more","Learn Xcode"])]
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rituals.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let ritual = rituals[indexPath.row]
        let cell = tableView.dequeueReusableCellWithIdentifier("RitualCell", forIndexPath: indexPath) as! RitualTableViewCell
        cell.ritualTitle.text = ritual.timeOfDay
        cell.numberOfHabits.text = String(ritual.tasks.count)+" habits"
        cell.layer.cornerRadius = 10.0
        cell.layer.masksToBounds = true
        cell.layer.borderWidth = 0.0
        cell.layer.shadowOffset = CGSizeMake(0.0, -2.0)
        cell.layer.shadowRadius = 2.0
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.init(red: 228.0/255.0, green: 0.0/255.0, blue: 79.0/255.0, alpha: 1.0)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }

    
}
