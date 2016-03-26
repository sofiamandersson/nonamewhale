//
//  BookingVC.swift
//  workout
//
//  Created by Sofia Andersson on 2016-03-26.
//  Copyright © 2016 Sofia M Andersson. All rights reserved.
//

import UIKit

class BookingVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var bookingArray: [BookingItem] = [BookingItem]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        bookingArray = BookingDataGenerator.generateBookingData()
        
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return bookingArray.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("BookingCell", forIndexPath: indexPath) as! BookingTableCell
        
        //let bookingItem = bookingArray[indexPath.row]
        
        
//        cell.cellRank.text = leaderboardItem.rankLeaderboard
//        cell.cellName.text = leaderboardItem.nameLeaderboard
//        cell.cellTrophy.text = leaderboardItem.trophysLeaderboard
//        cell.cellPoints.text = leaderboardItem.pointsLeaderboard
        
        let currentColor = blueColorArray[indexPath.row % blueColorArray.count]
        cell.contentView.backgroundColor = currentColor
        
        
        
        return cell
    }


}
