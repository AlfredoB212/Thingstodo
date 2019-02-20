//
//  ViewController.swift
//  LifeCycle
//
//  Created by Alfredo Barragan on 11/9/18.
//  Copyright © 2018 Alfredo Barragan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("the view has loaded")
    
    }
    override func viewWillLayoutSubviews() {
        print("the app is about to layout its subviews")
    }
    override func viewDidLayoutSubviews() {
        print("the app laid out the subviews")
    }

    
    override func viewDidAppear(_ animated: Bool) {
        print("the view has appeared")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("the view has disappeared")
    }
    
 


}





