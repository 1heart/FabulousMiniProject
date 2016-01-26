//
//  AddRitual.swift
//  FabulousMiniProject
//
//  Created by Sinclair on 1/25/16.
//  Copyright © 2016 Sinclair. All rights reserved.
//

import UIKit

class AddRitual: UIViewController {
    
    @IBOutlet weak var ritualTitle: UITextField!
    
    @IBOutlet weak var time: UITextField!
    
    @IBOutlet weak var habits: UITextField!
    
    //this is very messy, will be cleaned up later
    @IBAction func submitButton(sender: AnyObject) {
        
        let habitsToAdd: [String] = (habits.text?.componentsSeparatedByString(","))!
        rituals.append(Ritual(startTime: Int(time.text!)!))
        rituals.append(Ritual(timeOfDay: ritualTitle.text!, startTime: Int(time.text!)!, tasks: habitsToAdd))
        //NSUserDefaults.standardUserDefaults().setObject(rituals, forKey: "rituals")
    }
    
    //make statusbarbackground global to avoid repitition
    override func viewDidLoad() {
        super.viewDidLoad()
        let statusBarBackground: UIView = UIView.init(frame: CGRectMake(0, 0, UIScreen.mainScreen().bounds.size.width, 20))
        statusBarBackground.backgroundColor = UIColor.init(red: 228.0/255.0, green: 0.0/255.0, blue: 79.0/255.0, alpha: 1.0)
        self.view.addSubview(statusBarBackground)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //make global statusbar lightcontent to avoid repition in classes
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    
    
}
