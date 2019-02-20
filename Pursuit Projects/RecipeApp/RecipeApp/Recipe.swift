//
//  Recipe.swift
//  RecipeApp
//
//  Created by Alfredo Barragan on 12/10/18.
//  Copyright © 2018 Alfredo Barragan. All rights reserved.
//

import Foundation

class Recipe: Codable {
    
    
    class OuterLayer: Codable {
        var hits: [Recipe]
        }

    class RecipeInfo: Codable {
        var label: String
        var image: String
        var URL: String
    }
    
        var recipe: RecipeInfo


}


