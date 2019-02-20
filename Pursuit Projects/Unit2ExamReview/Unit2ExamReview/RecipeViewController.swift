//
//  ViewController.swift
//  Unit2ExamReview
//
//  Created by Alfredo Barragan on 11/28/18.
//  Copyright © 2018 Alfredo Barragan. All rights reserved.
//

import UIKit

class RecipeViewController: UIViewController {
    @IBOutlet weak var RecipeTableView: UITableView!
    
    // data
    private var recipes = [Recipe]()

    override func viewDidLoad() {
        super.viewDidLoad()
        recipes = Recipe.getRecipes()
        RecipeTableView.dataSource = self
        
        
    }


}

extension RecipeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       // populate the ceill with the image and the name of the recipe
        let cell = tableView.dequeueReusableCell(withIdentifier: "RecipeCell", for: indexPath)
        let recipe = recipes[indexPath.row]
        cell.imageView?.image = recipe.image
        cell.textLabel?.text = recipe.name
        cell.detailTextLabel?.text = recipe.description
        return cell
    }
    
}
