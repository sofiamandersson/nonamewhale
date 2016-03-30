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
        
        self.tableView.rowHeight = 120.0
        
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bookingArray.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("BookingCell", forIndexPath: indexPath) as! BookingTableCell
        
        let bookingItem = bookingArray[indexPath.row]
        
        
        cell.cellName.text = bookingItem.nameBooking
        cell.cellDate.text = bookingItem.dateBooking
        cell.cellLocation.text = bookingItem.locationBooking
        cell.sportsIcon.image = UIImage( named: bookingItem.sportBooking)
        
        let currentColor = blueColorArray[indexPath.row % blueColorArray.count]
        cell.contentView.backgroundColor = currentColor
        
        
        
        return cell
    }//end of cellForRowAtIndexPath


}
