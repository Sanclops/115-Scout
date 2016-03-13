//
//  FirstViewController.swift
//  115 Scout
//
//  Created by Sankalp Agrawal on 3/12/16.
//  Copyright © 2016 Sankalp Agrawal. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet var teamNo: UILabel!
    @IBOutlet var matchNo: UILabel!

    @IBOutlet var IDLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = "Name: \(UserData.scoutName)"
        IDLabel.text = "ID: \(UserData.scoutID)"
        
        var x = NSUserDefaults.standardUserDefaults().stringForKey("Sankalp is a GOD")
        if x != nil {
        var data = x?.componentsSeparatedByString("|")
            if data!.count > 4 {
                teamNo.text = "Team Number: \(data![UserData.scoutID - 1])"
                matchNo.text = "Match Number: \(data![3])"
                print("Called")
                
            }
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func refresh(sender: AnyObject) {
        var x = NSUserDefaults.standardUserDefaults().stringForKey("Sankalp is a GOD")
        if x != nil {
            var data = x?.componentsSeparatedByString("|")
            if data!.count > 4 {
                teamNo.text = "Team Number: \(data![UserData.scoutID - 1])"
                matchNo.text = "Match Number: \(data![3])"
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

