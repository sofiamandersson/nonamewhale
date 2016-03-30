//
//  ChallengesContent.swift
//  workout
//
//  Created by Gabriel Kroll on 14/03/16.
//  Copyright © 2016 Sofia M Andersson. All rights reserved.
//

import Foundation

class ChallengesContent {
    var imageName = ""
    var userName = ""
    var description = ""
    var moreInfo = ""
    
    init(imageName: String, userName: String, desc: String, moreInfo: String) {
        self.imageName = imageName
        self.userName = userName
        self.description = desc
        self.moreInfo = moreInfo
    }
}