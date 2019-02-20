//
//  MovieSearchAPI.swift
//  MovieSearch
//
//  Created by Alfredo Barragan on 12/7/18.
//  Copyright © 2018 Alfredo Barragan. All rights reserved.
//

import Foundation

final class MovieSearchAPI {
//
//    static func search(completion: @escaping( Error?, [Movie]?) -> Void ) {
//        let urlString = "https://itunes.apple.com/search?media=movie&term=holiday&limit=100"
//        guard let url = URL(string: urlString) else { return }
//        URLSession.shared.dataTask(with: url) { (data, response, error)
//            in
//            if let error = error {
//                completion(error, nil)
//            } else if let data = data {
//                do {
//                    let searchData = try JSONDecoder().decode(Movie.SearchData.self, from: data)
//                    completion(nil, searchData.results)
//                } catch {
//                   completion(error, nil)
//                }
//
//            }
//    }.resume()
// search for a movie by keyword
    static func search(keyword: String, completion: @escaping(Error?, [Movie]?) -> Void) {
    // this is the iTunes Movie Search endpoint
    let urlString = "https://itunes.apple.com/search?media=movie&term=\(keyword)&limit=100"
    guard let url = URL(string: urlString) else { return }
    URLSession.shared.dataTask(with: url) { (data, response, error) in
        if let error = error {
            completion(error, nil)
        } else if let data = data {
            do {
                let searchData = try JSONDecoder().decode(Movie.SearchData.self, from: data)
                completion(nil, searchData.results)
            } catch {
                completion(error, nil)
            }
        }
        }.resume() // don't forget resume()
}


}
