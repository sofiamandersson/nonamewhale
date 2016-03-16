//
//  AchievementsTableVC.swift
//  workout
//
//  Created by Gabriel Kroll on 11/03/16.
//  Copyright © 2016 Sofia M Andersson. All rights reserved.
//

import UIKit

class AchievementsTableVC: UITableViewController {
    
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
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! myCell
        
        let fooItem = fooArray[indexPath.row]
        
        cell.myImageView.image = UIImage(named: fooItem.imageName)
        cell.myLabel.text = fooItem.description
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let fooSelected = fooArray[indexPath.row]
        let detailVC: DetailVC = self.storyboard?.instantiateViewControllerWithIdentifier("DetailAchievementsViewController") as! DetailVC
        
        detailVC.imageDetail = fooSelected.imageName
        detailVC.descripionLabel = fooSelected.description
        detailVC.moreInfoDetail = fooSelected.moreInfo
        
        self.presentViewController(detailVC, animated: true, completion: nil)
    }
}




