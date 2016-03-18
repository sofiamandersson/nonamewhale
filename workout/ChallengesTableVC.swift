//
//  ChallengesTableVC.swift
//  workout
//
//  Created by Gabriel Kroll on 11/03/16.
//  Copyright © 2016 Sofia M Andersson. All rights reserved.
//

import UIKit

class ChallengesTableVC: UITableViewController {
    

    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBAction func segmentedControllChellangesAchievements(sender: AnyObject) {
        self.tableView.reloadData()
    }

    var fooArray: [Foo] = [Foo]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let foo1 = Foo(imageName: "lala.jpg", desc: "Tipsi", moreInfo: "Boo - lalalalalalaaalaaa")
        let foo2 = Foo(imageName: "lala.jpg", desc: "YAAAAS", moreInfo: "YAAAS YAAS YAAAS")
        let foo3 = Foo(imageName: "lala.jpg", desc: "Tipsi2", moreInfo: "Boo - lala2lalalal2aaalaaa")
        let foo4 = Foo(imageName: "lala.jpg", desc: "YAAAAS2", moreInfo: "YAAA2S YAAS YAAA2S2222")
        
        fooArray.append(foo1)
        fooArray.append(foo2)
        fooArray.append(foo3)
        fooArray.append(foo4)
        
        //row height
        self.tableView.rowHeight = 80.0
        
        

    }


    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return fooArray.count
    }
    
    // ChallengeCell to right Prototype Cell
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // reuseIdentifier :)
        let reuseIdentifier = cellIdentiferBasedOnSelectedType()
        let cell = tableView.dequeueReusableCellWithIdentifier(reuseIdentifier, forIndexPath: indexPath) as! myCell

        let fooItem = fooArray[indexPath.row]
        
        // IMAGES AND TEXT
        cell.myImageView.image = UIImage(named: fooItem.imageName)
        cell.myLabel.text = fooItem.description
        
        // COLORS
        let currentColor = greenColors[indexPath.row % greenColors.count]
        cell.contentView.backgroundColor = currentColor

        return cell
    }
    
    // returns right identifyer
    func cellIdentiferBasedOnSelectedType() -> String {
        switch segmentedControl.selectedSegmentIndex {
            case 0: return "ChallengesCell"
            case 1: return "AchievementsCell"
            default: return ""
        }
    }

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let fooSelected = fooArray[indexPath.row]
        let detailVC: DetailVC = self.storyboard?.instantiateViewControllerWithIdentifier("DetailViewController") as! DetailVC
        
        detailVC.imageDetail = fooSelected.imageName
        detailVC.descripionLabel = fooSelected.description
        detailVC.moreInfoDetail = fooSelected.moreInfo
        
        self.presentViewController(detailVC, animated: true, completion: nil)
    }
}
