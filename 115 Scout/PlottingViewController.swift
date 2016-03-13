//
//  PlottingViewController.swift
//  115 Scout
//
//  Created by Sankalp Agrawal on 3/12/16.
//  Copyright © 2016 Sankalp Agrawal. All rights reserved.
//

import UIKit

class PlottingViewController:UIViewController {
    
    var image:UIImageView!
    
    @IBOutlet var topMiss: UIButton!
    @IBOutlet var bottomMiss: UIButton!
    @IBOutlet var bottomScore: UIButton!
    @IBOutlet var topScore: UIButton!
    
    var points:[UIImageView] = []
    var status = 0
    
    override func viewDidLoad() {
        var i = UIImage(imageLiteral: "fieldmap")
        
        image = UIImageView(image: i)
        image.frame = CGRectMake(0, 30, self.view.frame.size.width, (self.view.frame.size.width/i.size.width)*i.size.height)
        
        self.view.addSubview(image)
    }
    
    @IBAction func clear(sender: AnyObject) {
        for point in points {
            point.removeFromSuperview()
        }
    }

    @IBAction func missTop(sender: AnyObject) {
    }

    @IBAction func scoreTop(sender: AnyObject) {
    }
    
    @IBAction func missBottom(sender: AnyObject) {
    }
    
    @IBAction func scoreBottom(sender: AnyObject) {
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        for touch in touches {
            
            let touchLocation = touch.locationInView(self.view)
            if (CGRectContainsPoint(image.frame, touchLocation)) {
                var i = UIImage(imageLiteral: "Crosshair")
                
                
                var pic = UIImageView(image: i)
                pic.frame = CGRectMake(0, 0, i.size.width/3, i.size.height/3)
                points.append(pic)
                pic.center = touchLocation
                self.view.addSubview(pic)
            }
            
        }
    }


}
