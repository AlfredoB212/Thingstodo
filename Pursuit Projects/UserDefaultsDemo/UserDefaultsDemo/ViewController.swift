//
//  ViewController.swift
//  UserDefaultsDemo
//
//  Created by Alfredo Barragan on 1/8/19.
//  Copyright © 2019 Alfredo Barragan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // saving a name String to UserDefaults
        
        if let name = UserDefaults.standard.object(forKey: UserDefaultsKeys.name) as? String {
            print("welcome back, \(name)")
        } else {
            print("no name was found in UserDefaults")
            
            // if no name, add your name
            // storing an object to UserDefaults
            
            if let backgroundColor = UserDefaults.standard.object(forKey: UserDefaultsKeys.backgroundColor) as? String {
                if backgroundColor == "black" {
                view.backgroundColor = .black
                } else {
                view.backgroundColor = .white
                }
               
            } else {
                view.backgroundColor = .black
                print("no name was found")
                UserDefaults.standard.set("green", forKey: UserDefaultsKeys.backgroundColor)
            }
        }
    }

    @IBAction func toggleDarkmode(_ sender: UIBarButtonItem) {
        if let backgroundColor = UserDefaults.standard.object(forKey: UserDefaultsKeys.backgroundColor) as? String {
            if backgroundColor == "black" {
                view.backgroundColor = .white
                UserDefaults.standard.set("white", forKey: UserDefaultsKeys.backgroundColor)
            } else {
                view.backgroundColor = .black
                UserDefaults.standard.set("black", forKey: UserDefaultsKeys.backgroundColor)
                
            }
        }
    }
    
}


