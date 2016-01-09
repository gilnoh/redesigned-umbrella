//
//  ViewController.swift
//  FoodTrackerTut
//
//  Created by Tae-Gil Noh on 2015. 12. 29..
//  Copyright © 2015년 Tae-Gil Noh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    // MARK: Properties
    @IBOutlet weak var mealNameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // some init 
        nameTextField.delegate = self
        
    }
    
    // MARK: Actions
    
    @IBAction func setDefaultLabelText(sender: UIButton) {
        
        mealNameLabel.text = "Default Text"
    }
    
    
    // "single key" passing, as required for DCSS client. okay. 
    // interesting that "event connection" is done in IDE and saved in 
    // NIB (storyboard) file. hmm. 
    @IBAction func followInput(sender: UITextField) {
//        if let s: String = sender.text
//        {
//            let i = s.endIndex
//            mealNameLabel.text = s.substringFromIndex(i.advancedBy(-1))
//            nameTextField.text = mealNameLabel.text
//        }
    }
    
    // MARK: UITextFieldDelegate
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    func textFieldDidEndEditing(textField: UITextField) {
        mealNameLabel.text=textField.text
        
    }
    
    
}

