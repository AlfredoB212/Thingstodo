//
//  ViewController.swift
//  IntroToTableViews
//
//  Created by Alfredo Barragan on 11/15/18.
//  Copyright © 2018 Alfredo Barragan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let daysOfWeek = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
    
    let daysOfWeekInternational = [["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"], ["Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sabado", "Domingo"]]
    
    @IBOutlet weak var myTableView: UITableView!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.delegate = self
        myTableView.dataSource = self
    }


}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("section: \(indexPath.section), row: \(indexPath.row)")
    }
}


extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return daysOfWeekInternational[section].count
    }
    
    
    func tableView(_ _tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // created a cell
        let cell = myTableView.dequeueReusableCell(withIdentifier: "dayCell", for: indexPath)
        
        
        // selected the appropriate string from my days of the week by using the rows indexpath.row
        let dayToSetUp = daysOfWeekInternational[indexPath.section][indexPath.row]
        
        //set teh cells text label to display the string chosen
        cell.textLabel?.text = dayToSetUp
        cell.detailTextLabel?.text = "this is in row: \(indexPath.row)"
        return cell
        }
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return daysOfWeekInternational.count
    }
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "English"
        case 1:
            return "Spanish"
        default:
            return "Unknown"
        }
    }
}


