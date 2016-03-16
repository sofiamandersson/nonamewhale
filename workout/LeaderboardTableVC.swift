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
        let person4 = LeaderboardItem(rankLeaderboard: "4", nameLeaderboard: "Sofia Andersson", pointsLeaderboard: "245")
        let person5 = LeaderboardItem(rankLeaderboard: "5", nameLeaderboard: "Sofia Andersson", pointsLeaderboard: "245")
        let person6 = LeaderboardItem(rankLeaderboard: "6", nameLeaderboard: "Sofia Andersson", pointsLeaderboard: "245")
        let person7 = LeaderboardItem(rankLeaderboard: "7", nameLeaderboard: "Sofia Andersson", pointsLeaderboard: "245")
        let person8 = LeaderboardItem(rankLeaderboard: "8", nameLeaderboard: "Sofia Andersson", pointsLeaderboard: "245")
        let person9 = LeaderboardItem(rankLeaderboard: "8", nameLeaderboard: "Sofia Andersson", pointsLeaderboard: "245")
        let person10 = LeaderboardItem(rankLeaderboard: "8", nameLeaderboard: "Sofia Andersson", pointsLeaderboard: "245")
        let person11 = LeaderboardItem(rankLeaderboard: "8", nameLeaderboard: "Sofia Andersson", pointsLeaderboard: "245")
        let person12 = LeaderboardItem(rankLeaderboard: "8", nameLeaderboard: "Sofia Andersson", pointsLeaderboard: "245")
        let person13 = LeaderboardItem(rankLeaderboard: "8", nameLeaderboard: "Sofia Andersson", pointsLeaderboard: "245")
        let person14 = LeaderboardItem(rankLeaderboard: "8", nameLeaderboard: "Sofia Andersson", pointsLeaderboard: "245")
        let person15 = LeaderboardItem(rankLeaderboard: "8", nameLeaderboard: "Sofia Andersson", pointsLeaderboard: "245")
        let person16 = LeaderboardItem(rankLeaderboard: "8", nameLeaderboard: "Sofia Andersson", pointsLeaderboard: "245")
        let person17 = LeaderboardItem(rankLeaderboard: "8", nameLeaderboard: "Sofia Andersson", pointsLeaderboard: "245")
        
        
        
        leaderboardArray.append(person1)
        leaderboardArray.append(person2)
        leaderboardArray.append(person3)
        leaderboardArray.append(person4)
        leaderboardArray.append(person5)
        leaderboardArray.append(person6)
        leaderboardArray.append(person7)
        leaderboardArray.append(person8)
        leaderboardArray.append(person9)
        leaderboardArray.append(person10)
        leaderboardArray.append(person11)
        leaderboardArray.append(person12)
        leaderboardArray.append(person13)
        leaderboardArray.append(person14)
        leaderboardArray.append(person15)
        leaderboardArray.append(person16)
        leaderboardArray.append(person17)

        
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
        
        let currentColor = greenColors[indexPath.row % greenColors.count]
        cell.contentView.backgroundColor = currentColor

        

        return cell
    }
    

}
