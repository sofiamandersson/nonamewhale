//
//  myAchievementsCell.swift
//  workout
//
//  Created by Gabriel Kroll on 15/03/16.
//  Copyright © 2016 Sofia M Andersson. All rights reserved.
//

import UIKit

class myAchievementsCell: UITableViewCell {
    
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
