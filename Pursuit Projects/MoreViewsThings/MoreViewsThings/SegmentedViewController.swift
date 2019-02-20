//
//  SegmentedViewController.swift
//  MoreViewsThings
//
//  Created by Alfredo Barragan on 11/9/18.
//  Copyright © 2018 Alfredo Barragan. All rights reserved.
//

import UIKit

class SegmentedViewController: UIViewController {
    
    var currentSegementIndex = 0 {
        didSet {
            segmentedLabel.text = "the current segment's index is \(currentSegementIndex)"
        }
    }
    
    @IBOutlet weak var segmentedLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func segmentedController(_ sender: UISegmentedControl) {
    
        currentSegementIndex = sender.selectedSegmentIndex
    }
    
}
