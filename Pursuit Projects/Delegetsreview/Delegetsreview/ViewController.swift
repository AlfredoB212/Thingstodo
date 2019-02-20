//
//  ViewController.swift
//  Delegetsreview
//
//  Created by Alfredo Barragan on 11/14/18.
//  Copyright © 2018 Alfredo Barragan. All rights reserved.
//

import UIKit

class ViewController: UIViewController  {
   
   
   
    @IBOutlet weak var Text: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Text.delegate = self
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        guard let input = textField.text else { return false }
        if input.count < 2 {
            return false
        }
        print(input)
        textField.resignFirstResponder()
        return true
        }
    
    
    

}
// CAN NOT declare variables inside an extention
extension ViewController: UITextFieldDelegate {
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print(textField.text!)
        return true
    }
}
