//
//  TabBarViewController.swift
//  workout
//
//  Created by Sofia Andersson on 2016-03-08.
//  Copyright © 2016 Sofia M Andersson. All rights reserved.
//

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
    
}//end of extension

class TabBarViewController: UITabBarController {
    
    let kNumberOfControllers = 5
    let addItemIndex:CGFloat = 2
    let addBgColor = UIColor(red: 64/255.0, green: 164/255.0, blue: 197/255.0, alpha: 1.0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabBar.barTintColor = UIColor(red: 61/255.0, green: 61/255.0, blue: 61/255.0, alpha: 1.0)
        self.tabBar.tintColor = UIColor.whiteColor()
        
        
        let itemWidth: CGFloat = self.tabBar.frame.size.width / CGFloat.init(kNumberOfControllers);
        self.tabBar.selectionIndicatorImage = UIImage.imageWithColor(UIColor(red: 109/255.0, green: 109/255.0, blue: 109/255.0, alpha: 1.0), size: CGSizeMake(itemWidth, self.tabBar.frame.size.height))
        
        let addItemWidth = tabBar.frame.width / CGFloat(tabBar.items!.count)
        let addBgView = UIView(frame: CGRectMake(addItemWidth * addItemIndex, 0, addItemWidth, tabBar.frame.height))
        addBgView.backgroundColor = addBgColor
    
        tabBar.insertSubview(addBgView, atIndex: 0)
        
        
        
    }// end of viewDidLoad

}
