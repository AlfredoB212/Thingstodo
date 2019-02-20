//
//  PickerViewController.swift
//  ProtocolColors
//
//  Created by Alfredo Barragan on 1/16/19.
//  Copyright © 2019 Alfredo Barragan. All rights reserved.
//

import UIKit

protocol PickerViewControllerdelegate: AnyObject {
    func colorChange(color: UIColor)
}

class PickerViewController: UIViewController {
    
    weak var delegate: PickerViewControllerdelegate?
    
    @IBOutlet weak var colorPicker: UIPickerView!
    
     var pickerData: [(name: String, color: UIColor)] = [("red",.red) ,("blue",.blue) ,("black",.black), ("yellow", .yellow)]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorPicker.delegate = self
        colorPicker.dataSource = self
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

extension PickerViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row].name
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.delegate?.colorChange(color: pickerData[row].color)
    }
}

