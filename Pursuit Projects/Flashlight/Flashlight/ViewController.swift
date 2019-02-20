//
//  ViewController.swift
//  Flashlight
//
//  Created by Alfredo Barragan on 11/7/18.
//  Copyright © 2018 Alfredo Barragan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var toggle = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

}

    @IBAction func flashlight(_ sender: UIButton) {
        if toggle  {
            view.backgroundColor = .white
            toggle = false
            return
        } else {
            toggle = true
            view.backgroundColor = .black
            return
        }
    }











}
