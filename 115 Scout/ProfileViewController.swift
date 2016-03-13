//
//  ProfileViewController.swift
//  115 Scout
//
//  Created by Sankalp Agrawal on 3/12/16.
//  Copyright © 2016 Sankalp Agrawal. All rights reserved.
//

import UIKit

class ProfileViewContoller:UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet var name: UITextField!
    @IBOutlet var picker: UIPickerView!
    var IDs = ["1", "2", "3"]
    var userID = 1
    override func viewDidLoad() {
        super.viewDidLoad()
        self.picker.dataSource = self
        self.picker.delegate = self
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        view.addGestureRecognizer(tap)
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if row == 0 {
            userID = 1
            UserData.scoutID = 1
        }
        
        if row == 1 {
            userID = 2
            UserData.scoutID = 2
        }
        
        if row == 2 {
            userID = 3
            UserData.scoutID = 3
        }
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }

    
    @IBAction func start(sender: AnyObject) {
        NSUserDefaults.standardUserDefaults().setObject(userID, forKey: "Scouting ID")
        UserData.scoutName = name.text!
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String {
        return IDs[row]
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return IDs.count
    }
    
    
}
