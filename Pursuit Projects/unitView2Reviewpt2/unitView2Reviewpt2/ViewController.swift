//
//  ViewController.swift
//  unitView2Reviewpt2
//
//  Created by Alfredo Barragan on 11/29/18.
//  Copyright © 2018 Alfredo Barragan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var myTableView: UIView!
    
    var Name = name.names
    didSet {
        myTableView.reloadData()
    }
    @IBOutlet weak var mySearchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.dataSource = self
        mySearchBar.delegate = self
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
}



extension ViewController: UISearchBarDelegate {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        print("search bar pressed")
    }
}
