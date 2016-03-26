//
//  BookingItem.swift
//  workout
//
//  Created by Sofia Andersson on 2016-03-26.
//  Copyright © 2016 Sofia M Andersson. All rights reserved.
//

import Foundation

class BookingItem {
    
    var nameBooking = ""
    var dateBooking = ""
    var locationBooking = ""
    var sportBooking = ""
    
    init (nameBooking: String, dateBooking: String, locationBooking: String, sportBooking: String){
        
        self.nameBooking = nameBooking
        self.dateBooking = dateBooking
        self.locationBooking = locationBooking
        self.sportBooking = sportBooking
        
    }
    
}