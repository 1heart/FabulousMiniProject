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
        print("Expand")
    }
    
    @IBOutlet weak var numberOfHabits: UILabel!
    
    @IBAction func showHabits(sender: AnyObject) {
        print("Show Habits")
        let senderButton: UIButton = sender as! UIButton
        let buttonCell: UITableViewCell = senderButton.superview?.superview as! UITableViewCell
        let tableView: UITableView = buttonCell.superview?.superview as! UITableView
        let cellPath = tableView.indexPathForCell(buttonCell)
        let cellRow = cellPath?.row
        print(cellRow)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
