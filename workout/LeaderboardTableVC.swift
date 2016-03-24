//
//  LeaderboardTableVC.swift
//  workout
//
//  Created by Sofia Andersson on 2016-03-16.
//  Copyright © 2016 Sofia M Andersson. All rights reserved.
//

import UIKit



class LeaderboardTableVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    var leaderboardArray: [LeaderboardItem] = [LeaderboardItem]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        
        leaderboardArray = LeaderboardDataGenerator.generateProfileData()
    

        
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    
        return 1
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     
        return leaderboardArray.count
    }

    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("LeaderboardCell", forIndexPath: indexPath) as! LeaderboardTableCell
        
        let leaderboardItem = leaderboardArray[indexPath.row]
        
        cell.cellRank.text = leaderboardItem.rankLeaderboard
        cell.cellName.text = leaderboardItem.nameLeaderboard
        cell.cellTrophy.text = leaderboardItem.trophysLeaderboard
        cell.cellPoints.text = leaderboardItem.pointsLeaderboard
        
        let currentColor = blueColorArray[indexPath.row % blueColorArray.count]
        cell.contentView.backgroundColor = currentColor
        
        if(indexPath.row == 3){
            
            cell.contentView.backgroundColor = UIColor.whiteColor()
            cell.cellName.textColor = UIColor.blackColor()
            
            cell.cellRank.textColor = UIColor.whiteColor()
            cell.cellPoints.textColor = UIColor.whiteColor()
            
            cell.rankImage.image = UIImage(named: "rankimageselection.png")
            cell.pointsImage.image = UIImage(named: "bpimageorange.png")
            
        }

        

        return cell
    }
    
//    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        
//        let selectedCell:UITableViewCell = tableView.cellForRowAtIndexPath(indexPath)!
//        selectedCell.contentView.backgroundColor = UIColor.whiteColor()
//        
////        cellName.contentView.text = UIColor.redColor()
//        
//        
//        
//        
//        
//        
//    }
    

}
