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
        
        let contentArray1 = ChallengesContent(imageName: "imageprofile1.png", desc: "Tipsi", moreInfo: "Boo - lalalalalalaaalaaa")
        let contentArray2 = ChallengesContent(imageName: "lala.jpg", desc: "YAAAAS", moreInfo: "YAAAS YAAS YAAAS")
        let contentArray3 = ChallengesContent(imageName: "lala.jpg", desc: "Tipsi2", moreInfo: "Boo - lala2lalalal2aaalaaa")
        let contentArray4 = ChallengesContent(imageName: "lala.jpg", desc: "YAAAAS2", moreInfo: "YAAA2S YAAS YAAA2S2222")
        
        contentArray.append(contentArray1)
        contentArray.append(contentArray2)
        contentArray.append(contentArray3)
        contentArray.append(contentArray4)
        
        // row height
        //self.tableView.rowHeight = 112.0
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! myCell
        
        let fooItem = contentArray[indexPath.row]
        
        cell.myImageView.image = UIImage(named: fooItem.imageName)

        //  try to make Images round
//        cell.myImageView.layer.cornerRadius = 8.0
//        cell.myImageView.clipsToBounds = true
        
        cell.myLabel.text = fooItem.description
        
        // COLORS
        //cell.contentView.backgroundColor = greenColors.mediumLight
        
        return cell
    }
    
    
}




