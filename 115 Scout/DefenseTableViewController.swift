//
//  DefenseTableViewController.swift
//  115 Scout
//
//  Created by Sankalp Agrawal on 3/12/16.
//  Copyright © 2016 Sankalp Agrawal. All rights reserved.
//

import UIKit

class DefenseTableViewController: UITableViewController {

    var data = ["Defense 1", "Defense 2", "Defense 3", "Defense 4"]
    
   

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        print("called")
        var controller = StackViewController()
        controller.top.setImage(UIImage(imageLiteral: "Cheval de Frise"), forState: .Normal)
        controller.bottom.setImage(UIImage(imageLiteral: "Drawbridge"), forState: .Normal)
        self.presentViewController(controller, animated: true, completion: nil)
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 4
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)
        let cell = UITableViewCell()
        cell.textLabel?.text = data[indexPath.row]
        // Configure the cell...

        return cell
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Defenses"
    }

}
