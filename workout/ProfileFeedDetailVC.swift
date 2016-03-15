//
//  ProfileFeedDetailVC.swift
//  workout
//
//  Created by Sofia Andersson on 2016-03-14.
//  Copyright © 2016 Sofia M Andersson. All rights reserved.
//

import UIKit

class ProfileFeedDetailVC: UIViewController {
    

    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var detailImage: UIImageView!
    
    
    var labelDetail = ""
    var imageDetail = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()

        detailLabel.text = labelDetail
        detailImage.image = UIImage(named: imageDetail)
        
    }

    
    @IBAction func dismissBtn(sender: UIBarButtonItem) {
        
        self.dismissViewControllerAnimated(true, completion:{})
        
    }

}
