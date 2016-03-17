//
//  TrophyVC.swift
//  workout
//
//  Created by Sofia Andersson on 2016-03-11.
//  Copyright © 2016 Sofia M Andersson. All rights reserved.
//

import UIKit

class TrophyVC: UIViewController {
    
    @IBOutlet weak var navBar: UINavigationBar!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navBar.setBackgroundImage(UIImage(), forBarMetrics: UIBarMetrics.Default)
        self.navBar.shadowImage = UIImage()
        self.navBar.translucent = true
        
    }
    

    @IBAction func dismissBtn(sender: UIBarButtonItem) {
        
        self.dismissViewControllerAnimated(true, completion:{})
        
    }

}
