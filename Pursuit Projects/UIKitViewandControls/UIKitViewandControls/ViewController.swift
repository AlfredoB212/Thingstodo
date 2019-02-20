//
//  ViewController.swift
//  UIKitViewandControls
//
//  Created by Alfredo Barragan on 11/28/18.
//  Copyright © 2018 Alfredo Barragan. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    @IBOutlet weak var switchControl:
    UISwitch!
    @IBOutlet weak var switchCell:
    UITableViewCell!
    @IBOutlet weak var sliderControl:
    UISlider!
    @IBOutlet weak var sliderLabel:
    UILabel!
    @IBOutlet weak var stepperControl:
    UIStepper!
    @IBOutlet weak var stepperLabel:
    UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        switchControl.isOn = false
        sliderControl.value = 0
        sliderLabel.text = "0"
    
    }
    
    


    
    
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        let color = sender.isOn ? UIColor.red : UIColor.white
        switchCell.backgroundColor = color
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        
        sliderControl.minimumValue = 0
        sliderControl.maximumValue = 1
        sliderLabel.text = "\(sliderControl.value)"
    }
    
    @IBAction func stepperChanged(_ sender: UIStepper) {
        
        stepperControl.minimumValue = 0
        stepperControl.maximumValue = 100
        stepperLabel.text =
        Int(sender.value).description
    
    }
    
    
    
    
    
    

}
