//
//  ProfileTableVC.swift
//  workout
//
//  Created by Sofia Andersson on 2016-03-11.
//  Copyright © 2016 Sofia M Andersson. All rights reserved.
//

import UIKit

class ProfileTableVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
 
    var workoutFeedArray: [WorkoutFeedItem] = [WorkoutFeedItem]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        workoutFeedArray = ProfileDataGenerator.generateProfileData()
        
        self.tableView.rowHeight = 80.0
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return workoutFeedArray.count
    }

    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            
            let cell = tableView.dequeueReusableCellWithIdentifier("ProfileCell", forIndexPath: indexPath) as! ProfileCell
            
            let feedItem = workoutFeedArray[indexPath.row]
            
            cell.dateLabel.text = feedItem.dateProfileFeed
            cell.headlineLabel.text = feedItem.headlineProfileFeed
        
            let currentColor = greyColorArray[indexPath.row % greyColorArray.count]
            cell.contentView.backgroundColor = currentColor
        
            
            return cell
        
    }//end of cell function
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let feedItemDetail = workoutFeedArray[indexPath.row]
        let feedItemSelected:ProfileFeedDetailVC = self.storyboard?.instantiateViewControllerWithIdentifier("ProfileFeedDetailVC") as! ProfileFeedDetailVC
        
        feedItemSelected.imageDetail = feedItemDetail.imageProfileFeed
        feedItemSelected.labelDetail = feedItemDetail.labelProfileFeed
        feedItemSelected.dateDetail = feedItemDetail.dateProfileFeed
        
        self.presentViewController(feedItemSelected, animated: true, completion: nil)
        
    }// end of didSelectRowAtIndexPath
    

}
