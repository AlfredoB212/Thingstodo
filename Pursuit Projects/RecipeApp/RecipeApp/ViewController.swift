//
//  ViewController.swift
//  RecipeApp
//
//  Created by Alfredo Barragan on 12/10/18.
//  Copyright © 2018 Alfredo Barragan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var recipeTableView: UITableView!
    @IBOutlet weak var recipeSearchBar: UISearchBar!
    var recipes = [Recipe]() {
        didSet {
            DispatchQueue.main.async {
            self.recipeTableView.reloadData()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        recipeTableView.dataSource = self
        recipleSearchBar.delegate = self
        recipleAPIClient 
        
        
    }


}

