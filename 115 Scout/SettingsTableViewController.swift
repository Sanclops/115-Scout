//
//  SettingsTableViewController.swift
//  115 Scout
//
//  Created by Sankalp Agrawal on 3/13/16.
//  Copyright © 2016 Sankalp Agrawal. All rights reserved.
//

import UIKit

class SettingsTableViewController: UITableViewController {

    var data = ["Match Number: ", "Team Number: ", "Name: ", "ID: "]
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var x = NSUserDefaults.standardUserDefaults().stringForKey("Sankalp is a GOD")
        if x != nil {
            var data = x?.componentsSeparatedByString("|")
            if data!.count > 4 {
                UserData.matchData = ["\(UserData.matchNum)", data![UserData.scoutID - 1], UserData.scoutName, "\(UserData.scoutID)"]
            }
        }
        
        var nib = UINib(nibName: "SettingCell", bundle: nil)
        tableView.registerNib(nib, forCellReuseIdentifier: "cell")
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return data.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell = self.tableView.dequeueReusableCellWithIdentifier("cell") as! SettingsTableViewCell
        print(UserData.matchData.count)
        
        cell.titleLabel.text = data[indexPath.row]
        
        do {
            cell.dataLabel.text = try(UserData.matchData[indexPath.row])
        } catch {
            cell.dataLabel.text = "nil"
        }
        
        return cell
    }
    


}
