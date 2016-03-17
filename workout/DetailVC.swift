//
//  DetailVC.swift
//  workout
//
//  Created by Gabriel Kroll on 14/03/16.
//  Copyright © 2016 Sofia M Andersson. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var detailImage: UIImageView!
    
    @IBOutlet weak var detailLabel: UILabel!
    
    @IBOutlet weak var moreInfoLabel: UILabel!
    
    var imageDetail = ""
    var descripionLabel = ""
    var moreInfoDetail = ""
    
    @IBAction func backButton(sender: AnyObject) {
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        detailImage.image = UIImage(named: imageDetail)
        detailLabel.text = descripionLabel
        moreInfoLabel.text = moreInfoDetail
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
