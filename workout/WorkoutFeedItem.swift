//
//  WorkoutFeedItem.swift
//  workout
//
//  Created by Sofia Andersson on 2016-03-14.
//  Copyright © 2016 Sofia M Andersson. All rights reserved.
//

import Foundation

class WorkoutFeedItem {
    
    var headlineProfileFeed = ""
    var labelProfileFeed = ""
    var imageProfileFeed = ""
    var dateProfileFeed = ""
    
    init (headlineProfileFeed: String, labelProfileFeed: String, imageProfileFeed: String, dateProfileFeed: String) {
        
        self.headlineProfileFeed = headlineProfileFeed
        self.labelProfileFeed = labelProfileFeed
        self.imageProfileFeed = imageProfileFeed
        self.dateProfileFeed = dateProfileFeed
        
    }
    
}