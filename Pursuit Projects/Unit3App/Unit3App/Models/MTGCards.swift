//
//  MTGCards.swift
//  Unit3App
//
//  Created by Alfredo Barragan on 1/3/19.
//  Copyright © 2019 Alfredo Barragan. All rights reserved.
//

import Foundation
struct PodcastData: Codable {
    let resultcount: Int?
    let results: [Podcast]
}
struct Podcast: Codable {
    let trackId: Int
    let artistName: String
    let collectionName: String
    let artworkUrl600: URL
}
