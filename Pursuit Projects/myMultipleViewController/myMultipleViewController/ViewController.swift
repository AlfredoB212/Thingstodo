//
//  ViewController.swift
//  myMultipleViewController
//
//  Created by Alfredo Barragan on 11/8/18.
//  Copyright © 2018 Alfredo Barragan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var myHouses = [House]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myHouses = HouseFactory.houses
        
    }

   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    // MAKE SURE THE PLACE I AM SEGUEING TO CAN BE CASTED AS MY CUSTOM VIEWCONTROLLER (THE NEW VIEW CONTROLLER FILE YOU CREATED)
    guard let destination = segue.destination as? DetailViewController,
            let button = sender as? UIButton else {return}
            destination.houseIExcept = myHouses[button.tag]
    
    }
}

