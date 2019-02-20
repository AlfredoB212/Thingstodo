//
//  NewsAPI.swift
//  NewsApp
//
//  Created by Alfredo Barragan on 12/10/18.
//  Copyright © 2018 Alfredo Barragan. All rights reserved.
//

import UIKit

enum AppError {
    case badURL (String)
    case badData(Error)
    case badDecoding(Error)
}




final class NewsAPIClient {

    
    static func getAllNews (completionHandler: @escaping ([Article]?,AppError?)-> Void) {
    
        guard let url = URL.init(string: "https://newsapi.org/v2/top-headlines?country=us") else {
            completionHandler(nil, .badURL("url IS TRASH"))
            return
        }
// creating a urlRequest using a url to initialize (init)
        var urlRequest = URLRequest.init(url: url)
        urlRequest.addValue("77982fb5497048c6bd287870622454e4", forHTTPHeaderField: "Authorization")

        URLSession.shared.dataTask(with: urlRequest) { (data, response, error)
            in
            if let error = error {
                completionHandler(nil, .badData(error))
            }
            
            
            if let data = data {
                do {
                   let newsData = try JSONDecoder().decode(Article.OuterLayer.self, from: data)
                   completionHandler(newsData.articles, nil)
                } catch {
                    completionHandler(nil, .badDecoding(error))
                }
    }
    }.resume()

}
}
    final class ImageClient {
        static func getImage(stringuRL:String) -> UIImage? {
            guard let myImageURL = URL.init(string: stringuRL) else { return nil }
            do {
                let data = try Data.init(contentsOf: myImageURL)
                guard let image = UIImage.init(data: data) else { return nil }
                return image
            } catch {
                print(error)
                return nil
            }
            
        }
    }
    
    
    
    
    

