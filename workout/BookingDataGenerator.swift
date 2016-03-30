//
//  BookingDataGenerator.swift
//  workout
//
//  Created by Sofia Andersson on 2016-03-26.
//  Copyright © 2016 Sofia M Andersson. All rights reserved.
//

import UIKit

class BookingDataGenerator: NSObject {
    
    static func generateBookingData() -> [BookingItem] {
        
        let race1 = BookingItem(nameBooking: "Väsby Duathlon", dateBooking: "01 Maj, 2016", locationBooking: "Upplands Väsby", sportBooking: "iconsrace1.png")
        let race2 = BookingItem(nameBooking: "Tylösand Aquathlon", dateBooking: "07 Juli, 2016", locationBooking: "Tylösand", sportBooking: "iconsrace2.png")
        let race3 = BookingItem(nameBooking: "Malmö Triathlon", dateBooking: "08 Juli, 2016", locationBooking: "Malmö", sportBooking: "iconsrace3.png")
        let race4 = BookingItem(nameBooking: "Saltrö Ultimate", dateBooking: "13 Augusti, 2016", locationBooking: "Saltarö, Stockholm", sportBooking: "iconsrace4.png")
        let race5 = BookingItem(nameBooking: "Sala Silverman", dateBooking: "", locationBooking: "iconsrace5.png", sportBooking: "iconsrace5.png")
        
        
        return [race1, race2, race3, race4, race5]
        
    }
    
}
