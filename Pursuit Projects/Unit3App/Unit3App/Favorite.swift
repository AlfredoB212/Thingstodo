//
//  Favorite.swift
//  Unit3App
//
//  Created by Alfredo Barragan on 1/3/19.
//  Copyright © 2019 Alfredo Barragan. All rights reserved.
//

import Foundation
struct Favorite: Codable {
    let trackId: Int
    let favoritedBy: String
    let collectionName: String
    let artworkUrl600: URL
}
