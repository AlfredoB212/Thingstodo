//
//  ViewController.swift
//  Recipes
//
//  Created by Alfredo Barragan on 11/7/18.
//  Copyright © 2018 Alfredo Barragan. All rights reserved.
//

import UIKit


class RecipeViewController: UIViewController {

    var recipes = Recipe.getRecipes()
    
    // outlets
    @IBOutlet weak var recipeImage: UIImageView!
    @IBOutlet weak var recipeName: UILabel!
    @IBOutlet weak var recipeText: UITextView!
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // actions
    
    @IBAction func recipedChanged(_ sender: UIButton) {
        let recipe = recipes[sender.tag]
        updateRecipeUI(recipe: recipe)
    }
    
    func updateRecipeUI(recipe: Recipe) {
        recipeImage.image = recipe.image
        recipeName.text = recipe.name
    }
    
    
}

