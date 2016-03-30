//
//  LeaderboardDataGenerator.swift
//  workout
//
//  Created by Sofia Andersson on 2016-03-24.
//  Copyright © 2016 Sofia M Andersson. All rights reserved.
//

import UIKit

class LeaderboardDataGenerator: NSObject {
    
    static func generateLeaderboardData() -> [LeaderboardItem] {
    
        let person1 = LeaderboardItem(rankLeaderboard: "1", nameLeaderboard: "ericasvensson", trophysLeaderboard: "2", pointsLeaderboard: "402")
        let person2 = LeaderboardItem(rankLeaderboard: "2", nameLeaderboard: "biker87", trophysLeaderboard: "3", pointsLeaderboard: "395")
        let person3 = LeaderboardItem(rankLeaderboard: "3", nameLeaderboard: "JanZeito", trophysLeaderboard: "4", pointsLeaderboard: "356")
        let person4 = LeaderboardItem(rankLeaderboard: "4", nameLeaderboard: "Me", trophysLeaderboard: "6", pointsLeaderboard: "330")
        let person5 = LeaderboardItem(rankLeaderboard: "5", nameLeaderboard: "graffic34", trophysLeaderboard: "7", pointsLeaderboard: "328")
        let person6 = LeaderboardItem(rankLeaderboard: "6", nameLeaderboard: "michelle90", trophysLeaderboard: "2", pointsLeaderboard: "316")
        let person7 = LeaderboardItem(rankLeaderboard: "7", nameLeaderboard: "AKfrost", trophysLeaderboard: "2", pointsLeaderboard: "294")
        let person8 = LeaderboardItem(rankLeaderboard: "8", nameLeaderboard: "runforest", trophysLeaderboard: "2", pointsLeaderboard: "267")
        let person9 = LeaderboardItem(rankLeaderboard: "9", nameLeaderboard: "soffan78", trophysLeaderboard: "2", pointsLeaderboard: "259")
        let person10 = LeaderboardItem(rankLeaderboard: "10", nameLeaderboard: "SamuelSwimmer", trophysLeaderboard: "2", pointsLeaderboard: "245")
        
        return [person1, person2, person3, person4, person5, person6, person7, person8, person9, person10]
        
    }

}
