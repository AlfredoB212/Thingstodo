//
//  GoogleAPI.swift
//  NYTBestsellers
//
//  Created by Alfredo Barragan on 1/28/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import Foundation
struct GoogleBooks: Codable {
    let items: [BookVolume]
}

struct BookVolume: Codable {
    let volumeInfo: BookInfo
}

struct BookInfo: Codable {
    let description: String
    let imageLinks: BookImages
}

struct BookImages: Codable {
    let smallThumbnail: URL
    let thumbnail: URL
}




