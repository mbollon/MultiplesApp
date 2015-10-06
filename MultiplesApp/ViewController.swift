//
//  ViewController.swift
//  MultiplesApp
//
//  Purpose of app is to input a multiple
//  The user then clicks play and it adds that multiple 20 times
//  then returns to the play screen.
//  Project completed as part of an online course
//
//  Created by Marc Bollon on 10/5/15.
//  Copyright © 2015 Marc Bollon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var multipleValue = 0
    var addedValue = 0
    var currentValue = 0
    var clicks = 0
    
    // Object Outlets
    
    @IBOutlet weak var multiplesLogo: UIImageView!
    @IBOutlet weak var addedNumbers: UITextField!
    @IBOutlet weak var multiplesValueOutlet: UITextField!
    @IBOutlet weak var addButtonOutlet: UIButton!
    @IBOutlet weak var playButtonOutlet: UIButton!
    
    
    // Button Actions
    
    // Action to be taken when the Play button is pressed
    
    @IBAction func playAction(sender: AnyObject) {
        
        // Check for value in multiples field
        
        if (Int(multiplesValueOutlet.text!) != nil)  {
            
            multipleValue = Int(multiplesValueOutlet.text!)!
        
            // Hide and Unhide objects
            
            addedNumbers.hidden = false
            addButtonOutlet.hidden = false
            multiplesValueOutlet.hidden = true
            playButtonOutlet.hidden = true
            
            // Display instructions
            
            addedNumbers.text = "Press Add to Play"
            
        } else {
            
            addedNumbers.hidden = false
            addedNumbers.text = "Please enter a value below"
            
        }
        
        
    }

    
    // Created action to be taken when the Add button is pressed
    
    @IBAction func addAction(sender: AnyObject) {
        
        // Add the value up to 20 times
        
        if clicks < 20 {
            
            clicks++
            addedValue = currentValue + multipleValue
            addedNumbers.text = "\(currentValue) + \(multipleValue) = \(addedValue)"
            currentValue = addedValue
            
        
        // Once 20 times is completed, return to play screen.
        } else {
            
            // Unhide and Hide objects
            
            addedNumbers.hidden = true
            addButtonOutlet.hidden = true
            multiplesValueOutlet.hidden = false
            playButtonOutlet.hidden = false
            
            // Reset variables
            
            addedValue = 0
            currentValue = 0
            multipleValue = 0
            clicks = 0
            multiplesValueOutlet.text = nil
            
        }
        
    }

}

