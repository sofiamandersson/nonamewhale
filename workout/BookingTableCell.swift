//
//  BookingTableCell.swift
//  workout
//
//  Created by Sofia Andersson on 2016-03-26.
//  Copyright © 2016 Sofia M Andersson. All rights reserved.
//

import UIKit

class BookingTableCell: UITableViewCell {

    @IBOutlet weak var cellName: UILabel!
    @IBOutlet weak var cellDate: UILabel!
    @IBOutlet weak var cellLocation: UILabel!
    @IBOutlet weak var sportsIcon: UIImageView!
    
    
    @IBOutlet weak var bookingBtn: UIButton!
    
//    func viewDidLoad() {
//        viewDidLoad()
//        
//        self.bookingBtn.layer.cornerRadius = 5
//        
//    }
    
    @IBAction func confirmBooing(sender: UIButton) {
        
//        let alertController = UIAlertController(title: "Appcoda", message: "Message in alert dialog", preferredStyle: UIAlertControllerStyle.Alert)
//        
//        let deleteAction = UIAlertAction(title: "Delete", style: UIAlertActionStyle.Destructive, handler: {(alert :UIAlertAction!) in
//            print("Delete button tapped")
//        })
//        alertController.addAction(deleteAction)
//        
//        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: {(alert :UIAlertAction!) in
//            print("OK button tapped")
//        })
//        alertController.addAction(okAction)
//        
        //presentViewController(alertController, animated: true, completion: nil)
        
    }
    
}
