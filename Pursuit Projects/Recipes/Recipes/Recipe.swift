//
//  Recipe.swift
//  Recipes
//
//  Created by Alfredo Barragan on 11/7/18.
//  Copyright © 2018 Alfredo Barragan. All rights reserved.
//

import UIKit

struct Recipe {
    
    // properties
    var name: String
    var image: UIImage
//    var ingredients:  [String : String]
//   var directions: [String]
    // methods
    // type methods
    static func getRecipes() -> [Recipe] {
        var recipes = [Recipe]()
        let classicDeviledEggs = Recipe(name: "Classic Deviled Eggs", image: UIImage.init(named: "classic-deviled-eggs")!)
        let perfectRoastChicken = Recipe(name: "Perfect Roast Chicken", image: UIImage.init(named: "perfect-roast-chicken")!)
        let beefBourguignon = Recipe(name: "Beef Bourguignon", image: UIImage.init(named: "beef-bourguignon")!)
        let frenchToast = Recipe(name: "French Toast", image: UIImage.init(named: "french-toast")!)
        let garlicRoastedPotatoes = Recipe(name: "Garlic Roasted Potatoes", image: UIImage.init(named: "garlic-roated-potatoes")!)
        let ovenBakedSalmon = Recipe(name: "Oven Baked Salmon", image: UIImage.init(named: "oven-baked-salmon")!)
        let perfectPotRoast = Recipe(name: "Perfect Pot Roast", image: UIImage.init(named: "perfect-pot-roast")!)
        let roastedBrusselSprouts = Recipe(name: "Roasted Brussels Sprouts", image: UIImage.init(named: "roated-brussels-sprouts")!)
        let shepherdsPie = Recipe(name: "Shepards Pie", image: UIImage.init(named: "shepherds-pie")!)
        let simplePerfectChili = Recipe(name: "Simple Perfect Chili", image: UIImage.init(named: "simple-perfect-chili")!)
        
        
        
        
        recipes = [classicDeviledEggs, perfectRoastChicken, beefBourguignon, frenchToast, garlicRoastedPotatoes, ovenBakedSalmon, perfectPotRoast,roastedBrusselSprouts,shepherdsPie,simplePerfectChili]
        
        return recipes
    }
    
    
    //instance methods
    
    
    
}
