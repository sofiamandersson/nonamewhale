//
//  TabBarBackground.swift
//  workout
//
//  Created by Gabriel Kroll on 24/03/16.
//  Copyright © 2016 Sofia M Andersson. All rights reserved.
//

import Foundation

import UIKit

extension UIImage {
    class func imageWithColor(color: UIColor, size: CGSize) -> UIImage {
        let rect: CGRect = CGRectMake(0, 0, size.width, size.height)
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        color.setFill()
        UIRectFill(rect)
        let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
    
}

class CustomTabbarController: UITabBarController {
    
    let kNumberOfControllers = 5;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBar.tintColor = UIColor.redColor();//selected icon color
        self.tabBar.barTintColor = UIColor.whiteColor();//tabbar color
        
        let itemWidth: CGFloat = self.tabBar.frame.size.width / CGFloat.init(kNumberOfControllers);
        self.tabBar.selectionIndicatorImage = UIImage.imageWithColor(UIColor.blueColor(), size: CGSizeMake(itemWidth, self.tabBar.frame.size.height))
        
    }
}