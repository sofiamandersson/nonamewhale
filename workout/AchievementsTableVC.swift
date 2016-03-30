//
//  AchievementsTableVC.swift
//  workout
//
//  Created by Gabriel Kroll on 11/03/16.
//  Copyright © 2016 Sofia M Andersson. All rights reserved.
//

import UIKit

class AchievementsTableVC: UITableViewController {
    
    var contentArray: [ChallengesContent] = [ChallengesContent]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let achievements1 = ChallengesContent(imageName: "imageprofile1.png", userName: "", desc: "", moreInfo: "")
        let achievements2 = ChallengesContent(imageName: "imageprofile2.png", userName: "", desc: "", moreInfo: "")
        let achievements3 = ChallengesContent(imageName: "imageprofile3.png", userName: "", desc: "", moreInfo: "")
        let achievements4 = ChallengesContent(imageName: "imageprofile3.png", userName: "", desc: "", moreInfo: "")
        
        contentArray.append(achievements1)
        contentArray.append(achievements2)
        contentArray.append(achievements3)
        contentArray.append(achievements4)

    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contentArray.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! myCell
        
        let achievementsItem = contentArray[indexPath.row]
        
        cell.achievementsImage.image = UIImage(named: achievementsItem.imageName)
        
        
        return cell
    }// end of cellForRowAtIndexPath

}
