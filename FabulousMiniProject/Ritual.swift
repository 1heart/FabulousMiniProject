//
//  Ritual.swift
//  FabulousMiniProject
//
//  Created by Sinclair on 1/22/16.
//  Copyright © 2016 Sinclair. All rights reserved.
//

//class serves to store a ritual, which will be accessed in the table view
class Ritual {
    var timeOfDay = "morning"
    var startTime = 0
    var tasks = [String]()
    
    init(timeOfDay: String, startTime: Int, tasks: [String]){
        self.timeOfDay = timeOfDay
        self.startTime = startTime
        self.tasks = tasks
    }
    
    func addTask(task: String){
        self.tasks.append(task)
    }
}