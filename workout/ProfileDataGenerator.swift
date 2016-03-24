//
//  ProfileDataGenerator.swift
//  workout
//
//  Created by Sofia Andersson on 2016-03-24.
//  Copyright © 2016 Sofia M Andersson. All rights reserved.
//

import UIKit

class ProfileDataGenerator: NSObject {

    static func generateProfileData() -> [WorkoutFeedItem] {
        let feed1 = WorkoutFeedItem(headlineProfileFeed: "Cycled 25 km in 3 hours", labelProfileFeed: "Cycled 25 km around Stockholm. Had a good start, but got really tired in the end. Need to focus more on keeping the same speed.", imageProfileFeed: "cyceldmap.png",  dateProfileFeed: "18. mar 2016")
        let feed2 = WorkoutFeedItem(headlineProfileFeed: "Swam 3 km in 30 min", labelProfileFeed: "Swam 3 km in 30 min", imageProfileFeed: "ran.jpg", dateProfileFeed: "16. mar 2016")
        let feed3 = WorkoutFeedItem(headlineProfileFeed: "Ran 15 km in 60 min", labelProfileFeed: "Ran 15 km in 60 min", imageProfileFeed: "swam.jpg",  dateProfileFeed: "10. mar 2016")
        let feed4 = WorkoutFeedItem(headlineProfileFeed: "Ran 0,8 km in 35 min", labelProfileFeed: "Ran 0,8 km in 35 min", imageProfileFeed: "ran.jpg", dateProfileFeed: "07. mar 2016")
        
        return [feed1, feed2, feed3, feed4]
    }
}
