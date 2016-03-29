//
//  ChallengesTableVC.swift
//  workout
//
//  Created by Gabriel Kroll on 11/03/16.
//  Copyright © 2016 Sofia M Andersson. All rights reserved.
//

import UIKit

class ChallengesTableVC: UITableViewController {
    
    let kChallengesCellHeight: CGFloat = 80.0
    let kAchievementsCellHeight: CGFloat = 112.0
    
    @IBOutlet weak var createChallengeFooterView: UIView!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBAction func segmentedControllChellangesAchievements(sender: AnyObject) {
        createChallengeFooterView.hidden = segmentedControl.selectedSegmentIndex != 0
        self.tableView.reloadData()
    }

    var contentArray: [ChallengesContent] = [ChallengesContent]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let content1 = ChallengesContent(imageName: "profileimage1.png", desc: "PerLien", moreInfo: "Boo - lalalalalalaaalaaa")
        let content2 = ChallengesContent(imageName: "profileimage2.png", desc: "Karlsson", moreInfo: "YAAAS YAAS YAAAS")
        let content3 = ChallengesContent(imageName: "profileimage3.png", desc: "michelle90", moreInfo: "Boo - lala2lalalal2aaalaaa")
        let content4 = ChallengesContent(imageName: "profileimage4.png", desc: "krollanders", moreInfo: "YAAA2S YAAS YAAA2S2222")
        
        contentArray.append(content1)
        contentArray.append(content2)
        contentArray.append(content3)
        contentArray.append(content4)
        
//        Needs constraints for cells
//        self.tableView.estimatedRowHeight = 80.0
//        
//        self.tableView.rowHeight = UITableViewAutomaticDimension
    }


    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return contentArray.count
    }
    
    // ChallengeCell to right Prototype Cell
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // reuseIdentifier :)
        let reuseIdentifier = cellIdentiferBasedOnSelectedType()
        let cell = tableView.dequeueReusableCellWithIdentifier(reuseIdentifier, forIndexPath: indexPath) as! myCell

//        let fooItem = contentArray[indexPath.row]
        
        // IMAGES AND TEXT
//        cell.myImageView.image = UIImage(named: fooItem.imageName)
//        cell.myLabel.text = fooItem.description
        
        // COLORS
        let currentColor = greenColors[indexPath.row % greenColors.count]
        cell.contentView.backgroundColor = currentColor

        return cell
    }
    
    // returns right identifyer
    func cellIdentiferBasedOnSelectedType() -> String {
        switch segmentedControl.selectedSegmentIndex {
            case 0: return "ChallengesCell"
            case 1: return "AchievementsCell"
            default: return ""
        }
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if segmentedControl.selectedSegmentIndex == 0 {
            return kChallengesCellHeight
        } else {
            return kAchievementsCellHeight
        }
    }
}
