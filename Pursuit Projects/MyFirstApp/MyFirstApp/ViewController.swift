//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Alfredo Barragan on 11/6/18.
//  Copyright © 2018 Alfredo Barragan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
        // outlets
    
    @IBOutlet weak var displayLabel: UILabel!
    
    
    // button outlets
    @IBOutlet weak var redButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    @IBOutlet weak var BlueButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        view.backgroundColor = .green
        
        
        //disable
        
        redButton.isEnabled = false
        
        
        // change image on a UIButton
        redButton.setImage(UIImage.init(named: "lime"), for: .normal)
    }


    // actions
    @IBAction func colorWillUpdate(_ sender: UIButton) {
        var newColor: (color: UIColor?, name: String)?
        switch sender.tag {
        case 1:
           newColor = (.red, "Red")
        case 2:
            newColor = (.green, "Green")
        case 3:
            newColor = (.blue, "Blue")
        default:
            print("invalid tag")
        }
        if let newColorType = newColor {
            view.backgroundColor = newColorType.color
            displayLabel.text = "The background color is \(newColorType.name)"
        }
    }
    
    
    
    
}

