//
//  ViewController.swift
//  ProtocolColors
//
//  Created by Alfredo Barragan on 1/16/19.
//  Copyright © 2019 Alfredo Barragan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let vc = segue.destination as? PickerViewController else { return }
        vc.delegate = self
    }
    
    
}

extension ViewController: PickerViewControllerdelegate {
    func colorChange(color: UIColor) {
        self.view.backgroundColor = color
    }
    
    
}
