//
//  ColorSliderViewController.swift
//  UserDefaultsDemo
//
//  Created by Alfredo Barragan on 1/8/19.
//  Copyright © 2019 Alfredo Barragan. All rights reserved.
//

import UIKit

class ColorSliderViewController: UIViewController {
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var labelForBlue: UILabel!
    @IBOutlet weak var lableForRed: UILabel!
    @IBOutlet weak var labelForGreen: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
}

@IBAction func blueSliderChangingColor(_ sender: UISlider) {
        self.view.backgroundColor = UIColor(red: CGFloat(redSlider.value)/255, green: CGFloat(greenSlider.value)/255, blue: CGFloat(blueSlider.value)/255, alpha: 1 )
    }
}
