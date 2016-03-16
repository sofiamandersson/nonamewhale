//
//  LeaderbordItem.swift
//  workout
//
//  Created by Sofia Andersson on 2016-03-16.
//  Copyright © 2016 Sofia M Andersson. All rights reserved.
//

import Foundation

class LeaderboardItem {
    
    var rankLeaderboard = ""
    var nameLeaderboard = ""
    var pointsLeaderboard = ""
    
    init (rankLeaderboard: String, nameLeaderboard: String, pointsLeaderboard: String) {
        
        self.rankLeaderboard = rankLeaderboard
        self.nameLeaderboard = nameLeaderboard
        self.pointsLeaderboard = pointsLeaderboard
        
    }
   
    
}