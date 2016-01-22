//
//  RitualCellView.swift
//  FabulousMiniProject
//
//  Created by Sinclair on 1/22/16.
//  Copyright © 2016 Sinclair. All rights reserved.
//

import UIKit

class RitualTableViewCell: UITableViewCell{
    
    @IBOutlet weak var ritualTitle: UILabel!
    
    @IBAction func expand(sender: AnyObject) {
    }
    
    @IBOutlet weak var numberOfHabits: UILabel!
    
    @IBAction func showHabits(sender: AnyObject) {
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
