//
//  CreateChallengeVC.swift
//  workout
//
//  Created by Gabriel Kroll on 17/03/16.
//  Copyright © 2016 Sofia M Andersson. All rights reserved.
//

import UIKit

class CreateChallengeVC: UIViewController {
    
    @IBOutlet weak var navBar: UINavigationBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navBar.setBackgroundImage(UIImage(), forBarMetrics: UIBarMetrics.Default)
        self.navBar.shadowImage = UIImage()
        self.navBar.translucent = true
        
    }

    
    @IBAction func dismissBtn(sender: UIBarButtonItem) {
        
        self.dismissViewControllerAnimated(false, completion: {})
    }

}
