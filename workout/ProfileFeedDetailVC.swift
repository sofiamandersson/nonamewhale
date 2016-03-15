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
    @IBOutlet weak var detailGraph: UIImageView!
    @IBOutlet weak var detailDate: UILabel!
    
    var labelDetail = ""
    var imageDetail = ""
    var graphDetail = ""
    var dateDetail = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()

        detailLabel.text = labelDetail
        detailImage.image = UIImage(named: imageDetail)
        detailGraph.image = UIImage(named: graphDetail)
        detailDate.text = dateDetail
        
    }

    
    @IBAction func dismissBtn(sender: UIBarButtonItem) {
        
        self.dismissViewControllerAnimated(true, completion:{})
        
    }

}
