//
//  StepperViewController.swift
//  MoreViewsThings
//
//  Created by Alfredo Barragan on 11/9/18.
//  Copyright © 2018 Alfredo Barragan. All rights reserved.
//

import UIKit

class StepperViewController: UIViewController {
   
    @IBOutlet weak var stepperLabel: UILabel!
    
    var currentStepperValue = 0.0 {
        didSet {
            stepperLabel.text = "the current stepper value is \(currentStepperValue)"
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func stepperPressed(_ sender: UIStepper) {
    currentStepperValue = sender.value
    }

}
