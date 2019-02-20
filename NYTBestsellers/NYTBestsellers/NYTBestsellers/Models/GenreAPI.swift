//
//  GenreAPI.swift
//  NYTBestsellers
//
//  Created by Alfredo Barragan on 1/28/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import Foundation
struct Genre: Codable {
    let results: [GenreType]
}

struct GenreType: Codable {
    let list_name: String
}
