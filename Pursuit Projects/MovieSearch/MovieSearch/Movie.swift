//
//  Movie.swift
//  MovieSearch
//
//  Created by Alfredo Barragan on 12/7/18.
//  Copyright © 2018 Alfredo Barragan. All rights reserved.
//

import Foundation
struct Movie: Codable {
    struct SearchData: Codable {
        let resultCount: Int
        let results: [Movie]
    }
    let collectionId: Int
    let trackId: Int
    let artistName: String
    let trackName: String
    let artistUrl100: URL
}
