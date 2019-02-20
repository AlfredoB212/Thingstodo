//
//  FavoriteBooksModel.swift
//  NYTBestsellers
//
//  Created by Alfredo Barragan on 1/31/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import Foundation
struct FavoriteBooks: Codable {
    let bookImage: Data
    let weeksOnBS: Int
    let desciption: String
    let createdAt: String
    let amazonLink: URL
    
}
