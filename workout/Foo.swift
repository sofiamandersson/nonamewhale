//
//  Foo.swift
//  workout
//
//  Created by Gabriel Kroll on 14/03/16.
//  Copyright © 2016 Sofia M Andersson. All rights reserved.
//

import Foundation

class Foo {
    var imageName = ""
    var description = ""
    var moreInfo = ""
    
    init(imageName: String, desc: String, moreInfo: String) {
        self.imageName = imageName
        self.description = desc
        self.moreInfo = moreInfo
    }
}