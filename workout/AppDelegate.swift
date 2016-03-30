//
//  AppDelegate.swift
//  workout
//
//  Created by Sofia Andersson on 2016-03-08.
//  Copyright © 2016 Sofia M Andersson. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        UITabBar.appearance().tintColor = UIColor.whiteColor(); //selected icon color
        UITabBar.appearance().barTintColor = UIColor.whiteColor(); //tabbar color
        
        UIApplication.sharedApplication().statusBarStyle = .LightContent
        
        return true
    }


}

