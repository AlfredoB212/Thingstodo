//
//  HouseFactory.swift
//  myMultipleViewController
//
//  Created by Alfredo Barragan on 11/8/18.
//  Copyright © 2018 Alfredo Barragan. All rights reserved.
//

import UIKit


struct HouseFactory {
    static let houses: [House] = [House.init(name: "Stark", banner: UIImage.init(named: "stark")!, motto: "Winter will come"),
                                  House.init(name: "Lannister", banner: UIImage.init(named: "lannister")!, motto:  "Hear me roar"),
                                  House.init(name: "Tully", banner: UIImage.init(named: "tully")!, motto: "Unbowed, unbent, unbroken"),
                                  House.init(name: "GreyJoy", banner: UIImage.init(named: "greyjoy")!, motto: "We do not sow"  )
    
    
    ]
    
}
