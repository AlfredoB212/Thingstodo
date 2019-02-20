//
//  ViewController.swift
//  WeatherApp
//
//  Created by Alfredo Barragan on 1/3/19.
//  Copyright © 2019 Alfredo Barragan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var weatherLabel: UILabel!
    @IBOutlet weak var weatherImageView: UIImageView!
    
    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var tempLabel: UILabel!
    
    let gradiantLayer = CAGradientLayer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    backgroundView.layer.addSublayer(gradiantLayer)
    }

    override func viewWillAppear(_ animated: true) {
        
    }

    func setBlueBackground() {
        
    }

    func setGrayBackground() {
        
    }
}


