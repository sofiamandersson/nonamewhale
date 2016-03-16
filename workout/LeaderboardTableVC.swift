//
//  LeaderboardTableVC.swift
//  workout
//
//  Created by Sofia Andersson on 2016-03-16.
//  Copyright © 2016 Sofia M Andersson. All rights reserved.
//

import UIKit

class LeaderboardTableVC: UITableViewController {
    
    var leaderboardArray: [LeaderboardItem] = [LeaderboardItem]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let person1 = LeaderboardItem(rankLeaderboard: "1", nameLeaderboard: "Sofia Andersson", pointsLeaderboard: "245")
        let person2 = LeaderboardItem(rankLeaderboard: "2", nameLeaderboard: "Sofia Andersson", pointsLeaderboard: "245")
        let person3 = LeaderboardItem(rankLeaderboard: "3", nameLeaderboard: "Sofia Andersson", pointsLeaderboard: "245")
        
        leaderboardArray.append(person1)
        leaderboardArray.append(person2)
        leaderboardArray.append(person3)

        
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     
        return leaderboardArray.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("LeaderboardCell", forIndexPath: indexPath) as! LeaderboardTableCell
        
        let leaderboardItem = leaderboardArray[indexPath.row]
        
        cell.cellRank.text = leaderboardItem.rankLeaderboard
        cell.cellName.text = leaderboardItem.nameLeaderboard
        cell.cellPoints.text = leaderboardItem.pointsLeaderboard

        

        return cell
    }
    

}
