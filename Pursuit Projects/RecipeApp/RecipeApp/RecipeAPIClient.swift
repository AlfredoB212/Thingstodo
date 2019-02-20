//
//  RecipeAPIClient.swift
//  RecipeApp
//
//  Created by Alfredo Barragan on 12/10/18.
//  Copyright © 2018 Alfredo Barragan. All rights reserved.
//

import Foundation

enum RecipeErrors {
    case badURL (String)
    case badData (Error)
    case badDecoding (Error)
    
}



final class RecipeAPIClient {
    static func getRecipes(completionHandler:
        @escaping(([Recipe]?,RecipeErrors?) -> Void)) {
            
        
        
        
        
        guard let url = URL.init(string: "https://api.edamam.com/search?q=Tomato&app_id=0367337e&app_key=306478a893cc0da21c933406c59361c7") else  {
        
        completionHandler(nil,.badURL("url failed"))
        return
        }

        URLSession.shared.dataTask(with: url) { ( data, response, error)
        in
            if let error = error {
                completionHandler(nil, .badData(error))
    
            }
            if let data = data {
                do {
                    let recipeData = try JSONDecoder().decode(Recipe.OuterLayer.self, from: data)
                    completionHandler(recipeData.hits, nil)
                } catch {
                   completionHandler(nil, .badDecoding(error))
                }
            }
            
        }.resume()
    
}




}
