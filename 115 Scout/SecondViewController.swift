//
//  SecondViewController.swift
//  115 Scout
//
//  Created by Sankalp Agrawal on 3/12/16.
//  Copyright © 2016 Sankalp Agrawal. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var reachLabel: UILabel!
    @IBOutlet var timerLabel: UILabel!
    var timerGoing = false
    var time = 0.00
    var timer = NSTimer()
    
    @IBOutlet var startButton: UIButton!
    var reachGoing = false
    var reachTimer = NSTimer()
    var reachTime = 0.00
    
    @IBOutlet var button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    @IBAction func startReach(sender: AnyObject) {
        if !reachGoing {
            reachTimer = NSTimer.scheduledTimerWithTimeInterval(0.01, target: self, selector: "updateReachLabel", userInfo: nil, repeats: true)
            startButton.setTitle("Stop Timer", forState: .Normal)
        } else {
            reachTimer.invalidate()
            startButton.setTitle("Start Timer", forState: .Normal)
        }
        reachGoing = !reachGoing
    }
    
    func updateReachLabel() {
        reachTime += 0.01
        
        reachLabel.text = "\(Int(reachTime/60)):\(Int(reachTime%60)):\(Int(100*(reachTime%1)))"
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func startOrStop(sender: AnyObject) {
        if !timerGoing {
            
            timer = NSTimer.scheduledTimerWithTimeInterval(0.01, target: self, selector: "updateLabel", userInfo: nil, repeats: true)
            button.setTitle("Stop Timer", forState: .Normal)
        } else {
            timer.invalidate()
            button.setTitle("Start Timer", forState: .Normal)
        }
        timerGoing = !timerGoing
    }
    
    func updateLabel() {
        
        time += 0.01
        
        //var seconds = NSString(format: "%.2f", 100*(time%1))
        timerLabel.text = "\(Int(time/60)):\(Int(time%60)):\(Int(100*(time%1)))"
    }

}

