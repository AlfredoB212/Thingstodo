//
//  EventsFeedViewController.swift
//  Tickets
//
//  Created by Alfredo Barragan on 1/30/19.
//  Copyright © 2019 Alfredo Barragan. All rights reserved.
//

import UIKit

class EventsFeedViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    private var defaultSearch = "10023"
    private var isZipCode = false
    
    private var events = [Event]() {
        didSet {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        searchEvents()
        configureNavBar()
        tableView.dataSource = self 
    }
    private func searchEvents() {
        isZipCode = true
        for char in defaultSearch {
            if Int(String(char)) == nil {
                isZipCode = false
                break
            }
        }
        TicketmasterAPIClient.searchEvents(keyword: defaultSearch, isZipCode: isZipCode) { (error, events) in
            if let error = error {
                print("error")
            } else if let events = events {
                self.events = events
            }
        }
    }
    
    private func configureNavBar() {
        navigationItem.title = "Events"
        //TODO: RETREIVE/ RESTORE/ FETCH/ GET BACK VALUE FROM USER DEFAULTS
        if let defaultSearch = UserDefaults.standard.object(forKey: UserDefaultsKeys.DefaultSearch) as? String {
           // WE HAVE A VALUE E.G THE ZIP CODE OR CITY NAME ENTERED FROM USER DEFAULTS
            navigationItem.rightBarButtonItem = UIBarButtonItem(title: defaultSearch, style: .plain, target: self, action: #selector(updateDefaultSearch))
        } else {
           // WE DID NOT FIND A VALUE FOR THE GIVEN KEY
            navigationItem.rightBarButtonItem = UIBarButtonItem(title: defaultSearch, style: .plain, target: self, action: #selector(updateDefaultSearch))
        }
        
    }
    // .alert presents dialog box
    // .actionSheet prsent modal view from the bottom
    @objc private func updateDefaultSearch() {
        let alertController = UIAlertController(title: "Default Search", message: "Please enter a default zip code or city name e.g Miami", preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        let submitAction = UIAlertAction(title: "Submit", style: .default) { alert in
            //Access textfield from the alertController
            guard let defaultSearch = alertController.textFields?.first?.text else {
                print("alertController textfield is nil broskie")
                return
            }
            //TODO: change the right bar button itemtitle to the default search name
            self.navigationItem.rightBarButtonItem?.title = defaultSearch
            //TODO: add new default search to user defaults
            // user defaults is a key/value pair structure similar to a dictionary
            // STORE / SAVE /PERSIST TO USER DEFAULTS
            // can only save property list objects e.g Data, String, Bool, Int
            UserDefaults.standard.set(defaultSearch, forKey: UserDefaultsKeys.DefaultSearch)
        }
        alertController.addTextField { (textfield) in
            textfield.placeholder = "enter zip code or city name"
            textfield.textAlignment = .center
            
        }
        alertController.addAction(cancelAction)
        alertController.addAction(submitAction)
        present(alertController, animated: true)
    }
}
extension EventsFeedViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return events.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EventCell", for: indexPath)
        let event = events[indexPath.row]
        cell.textLabel?.text = event.name
        return cell
    }
    
    
}
