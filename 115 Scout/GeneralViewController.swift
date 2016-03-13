//
//  GeneralViewController.swift
//  115 Scout
//
//  Created by Sankalp Agrawal on 3/13/16.
//  Copyright © 2016 Sankalp Agrawal. All rights reserved.
//

import UIKit

class GeneralViewController: UIViewController {

    @IBAction func send(sender: AnyObject) {
        let data = "TEST"                   //Format and send data
        
        let controller = UIActivityViewController(activityItems: [data], applicationActivities: nil)
        controller.excludedActivityTypes = [UIActivityTypePostToFacebook, UIActivityTypePostToTwitter, UIActivityTypePostToWeibo, UIActivityTypePrint, UIActivityTypeCopyToPasteboard, UIActivityTypeAssignToContact, UIActivityTypeSaveToCameraRoll, UIActivityTypePostToFlickr, UIActivityTypePostToTencentWeibo, UIActivityTypeMail]
        
        self.presentViewController(controller, animated: true, completion: nil)
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        view.addGestureRecognizer(tap)
        // Do any additional setup after loading the view.
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
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
