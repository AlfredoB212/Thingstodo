//
//  ViewController.swift
//  ProtocolUsingSettings
//
//  Created by Alfredo Barragan on 1/16/19.
//  Copyright © 2019 Alfredo Barragan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        }

    // 4. set the delegate
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let vc = segue.destination as? SettingsViewController else { return }
        vc.delegate = self
    }
}

// 5. Conform to the delegate and all all the methods required

extension ViewController: SettingsViewControllerDelegate {
    func darkModeOn() {
        self.view.backgroundColor = .black
        self.myLabel.textColor = .white
    }
    
    func darkModeOff() {
        self.view.backgroundColor = .white
        self.myLabel.textColor = .black 
    }
    
}
