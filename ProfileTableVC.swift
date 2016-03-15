//
//  ProfileTableVC.swift
//  workout
//
//  Created by Sofia Andersson on 2016-03-11.
//  Copyright © 2016 Sofia M Andersson. All rights reserved.
//

import UIKit

class ProfileTableVC: UITableViewController {
 
    @IBOutlet weak var largeProfileImage: UIImageView!
    
    var workoutFeedArray: [WorkoutFeedItem] = [WorkoutFeedItem]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.largeProfileImage.layer.cornerRadius = self.largeProfileImage.frame.size.width / 2
        self.largeProfileImage.clipsToBounds = true
        
        let feed1 = WorkoutFeedItem(labelProfileFeed: "ran af", imageProfileFeed: "ran.jpg")
        let feed2 = WorkoutFeedItem(labelProfileFeed: "won", imageProfileFeed: "winner.jpg")
        let feed3 = WorkoutFeedItem(labelProfileFeed: "won2", imageProfileFeed: "winner.jpg")
        let feed4 = WorkoutFeedItem(labelProfileFeed: "won3", imageProfileFeed: "winner.jpg")
        
        workoutFeedArray.append(feed1)
        workoutFeedArray.append(feed2)
        workoutFeedArray.append(feed3)
        workoutFeedArray.append(feed4)
        
        self.tableView.rowHeight = 150.0
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return workoutFeedArray.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 || indexPath.row == 2{
        
            let cell = tableView.dequeueReusableCellWithIdentifier("RightCell", forIndexPath: indexPath) as! ProfileTableRightCell

            let feedItem = workoutFeedArray[indexPath.row]
        
            cell.rightCellLabel.text = feedItem.labelProfileFeed
            cell.rightCellImage.image = UIImage(named: feedItem.imageProfileFeed)
        

            return cell
        } else {
            
            let cell = tableView.dequeueReusableCellWithIdentifier("LeftCell", forIndexPath: indexPath) as! ProfileTableLeftCell
            
            let feedItem = workoutFeedArray[indexPath.row]
            
            cell.leftCellLabel.text = feedItem.labelProfileFeed
            cell.leftCellImage.image = UIImage(named: feedItem.imageProfileFeed)
            
            
            return cell
        }
    }//end of cell function
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let feedItemDetail = workoutFeedArray[indexPath.row]
        let feedItemSelected:ProfileFeedDetailVC = self.storyboard?.instantiateViewControllerWithIdentifier("ProfileFeedDetailVC") as! ProfileFeedDetailVC
        
        feedItemSelected.imageDetail = feedItemDetail.imageProfileFeed
        feedItemSelected.labelDetail = feedItemDetail.labelProfileFeed
        
        self.presentViewController(feedItemSelected, animated: true, completion: nil)
        
        
        
    }// end of didSelectRowAtIndexPath
    

}
