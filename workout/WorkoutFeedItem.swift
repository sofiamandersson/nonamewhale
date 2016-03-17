//
//  WorkoutFeedItem.swift
//  workout
//
//  Created by Sofia Andersson on 2016-03-14.
//  Copyright © 2016 Sofia M Andersson. All rights reserved.
//

import Foundation

class WorkoutFeedItem {
    
    var labelProfileFeed = ""
    var imageProfileFeed = ""
    var graphProfileFeed = ""
    var dateProfileFeed = ""
    
    init (labelProfileFeed: String, imageProfileFeed: String, graphProfileFeed: String, dateProfileFeed: String) {
        
        self.labelProfileFeed = labelProfileFeed
        self.imageProfileFeed = imageProfileFeed
        self.graphProfileFeed = graphProfileFeed
        self.dateProfileFeed = dateProfileFeed
        
    }
    
}