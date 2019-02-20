//
//  SettingsViewController.swift
//  ProtocolUsingSettings
//
//  Created by Alfredo Barragan on 1/16/19.
//  Copyright © 2019 Alfredo Barragan. All rights reserved.
//

import UIKit
// 1. Define a protocol. add name and end in "delegate". Add methods.

protocol SettingsViewControllerDelegate: AnyObject {
    func darkModeOn()
}

class SettingsViewController: UIViewController {
    // 2. create weak delegate variable and set it to optional
    @IBOutlet weak var settingsTextField: UITextField!
    
    weak var delegate: SettingsViewControllerDelegate?
    
    
    @IBOutlet weak var darkLabel: UILabel!
    @IBOutlet weak var mySwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func switchedPressed(_ sender: UISwitch) {
        if sender.isOn {
            self.view.backgroundColor = .black
            self.darkLabel.textColor = .white
            // 3. call the delegate and method where you want to send the "message"
            self.delegate?.darkModeOn()
        } else {
            self.view.backgroundColor = .white
            self.darkLabel.textColor = .black
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
