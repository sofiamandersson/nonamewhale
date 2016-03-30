//
//  ChallengesTableVC.swift
//  workout
//
//  Created by Gabriel Kroll on 11/03/16.
//  Copyright © 2016 Sofia M Andersson. All rights reserved.
//

import UIKit

class ChallengesTableVC: UITableViewController {
    
    let kChallengesCellHeight: CGFloat = 120.0
    let kAchievementsCellHeight: CGFloat = 124.0
    
    @IBOutlet weak var createChallengeFooterView: UIView!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBAction func segmentedControllChellangesAchievements(sender: AnyObject) {
        
        createChallengeFooterView.hidden = segmentedControl.selectedSegmentIndex != 0
        self.tableView.reloadData()
        
    }

    var contentArray: [ChallengesContent] = [ChallengesContent]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let challenges1 = ChallengesContent(imageName: "profileimage1.png", userName: "PerLien", desc: "Challenged you to swim 5 km", moreInfo: "before 25.03.2016")
        let challenges2 = ChallengesContent(imageName: "profileimage2.png", userName: "Karlsson", desc: "Challenged you to run 10 km ", moreInfo: "before 27.03.2016")
        let challenges3 = ChallengesContent(imageName: "profileimage3.png", userName: "michelle90", desc: "Challenged you to cycle 15 km ", moreInfo: "before 01.04.2016")
        let challenges4 = ChallengesContent(imageName: "profileimage4.png", userName: "krollanders", desc: "Challenged you to swim 2 km", moreInfo: "before 03.04.2016")
        
        contentArray.append(challenges1)
        contentArray.append(challenges2)
        contentArray.append(challenges3)
        contentArray.append(challenges4)


    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contentArray.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        let reuseIdentifier = cellIdentiferBasedOnSelectedType()
        
        let cell = tableView.dequeueReusableCellWithIdentifier(reuseIdentifier, forIndexPath: indexPath) as! myCell
        
        let challangesItem = contentArray[indexPath.row]
        
        //cell.achievementsImage.image = UIImage(named: challangesItem.imageName)
        cell.myUsername.text = challangesItem.userName
        cell.myLabel.text = challangesItem.description
        cell.myMoreInfo.text = challangesItem.moreInfo
        

        let currentColor = blueColorArray[indexPath.row % blueColorArray.count]
        cell.contentView.backgroundColor = currentColor
        
        return cell
        
    }// end of cellIdentiferBasedOnSelectedType
    

    func cellIdentiferBasedOnSelectedType() -> String {
        
        switch segmentedControl.selectedSegmentIndex {
            
            case 0: return "ChallengesCell"
            case 1: return "AchievementsCell"
            default: return ""
            
        }
    }//end of cellIdentiferBasedOnSelectedType
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if segmentedControl.selectedSegmentIndex == 0 {
            
            return kChallengesCellHeight
            
        } else {
            
            return kAchievementsCellHeight
            
        }
    }//end of heightForRowAtIndexPath
}
