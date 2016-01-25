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
    
    //variable used to store "spacers" and rituals, see Ritual class
    var rituals = [Ritual(startTime: 830),Ritual(timeOfDay: "Morning", startTime: 830, tasks: ["Write To-Do","Today is a great day!","East a Great Breakfast","Feed Emma","Exercise", "Party!"]), Ritual(startTime: 1430),Ritual(timeOfDay: "Afternoon", startTime: 1430, tasks: ["Exercise some more","Learn Xcode"])]
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rituals.count
    }
    
    //function used to set different heights for the different tableview cells
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if(indexPath.row%2==0){
            return 50.0
        }
        return 150.0
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let ritual = rituals[indexPath.row]
        if(indexPath.row%2==0){
            let spacerCell = tableView.dequeueReusableCellWithIdentifier("SpacerCell", forIndexPath: indexPath) as! SpacerTableViewCell
            spacerCell.timeLabel.text = ritual.toString()
            spacerCell.center.x.advancedBy(-25.0)
            return spacerCell
        }
        let ritualCell = tableView.dequeueReusableCellWithIdentifier("RitualCell", forIndexPath: indexPath) as! RitualTableViewCell
        ritualCell.ritualTitle.text = ritual.timeOfDay
        ritualCell.numberOfHabits.text = String(ritual.tasks.count)+" habits"
        ritualCell.layer.cornerRadius = 15.0
        ritualCell.layer.masksToBounds = true
        ritualCell.layer.borderWidth = 0.0
        ritualCell.layer.shadowOffset = CGSizeMake(1, 1)
        ritualCell.layer.shadowOpacity = 0.75
        ritualCell.layer.shadowColor = UIColor.blackColor().CGColor
        ritualCell.layer.shadowRadius = 5.0
        
        ritualCell.clipsToBounds = false
        
        let shadowFrame: CGRect = ritualCell.layer.bounds
        let shadowPath: CGPathRef = UIBezierPath(rect: shadowFrame).CGPath
        ritualCell.layer.shadowPath = shadowPath
        return ritualCell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let statusBarBackground: UIView = UIView.init(frame: CGRectMake(0, 0, UIScreen.mainScreen().bounds.size.width, 20))
        statusBarBackground.backgroundColor = UIColor.init(red: 228.0/255.0, green: 0.0/255.0, blue: 79.0/255.0, alpha: 1.0)
        self.view.addSubview(statusBarBackground)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }

    
}
