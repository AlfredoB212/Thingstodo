//
//  Article.swift
//  NewsApp
//
//  Created by Alfredo Barragan on 12/10/18.
//  Copyright © 2018 Alfredo Barragan. All rights reserved.
//

import Foundation
struct Article: Codable {
    struct OuterLayer: Codable {
        let articles: [Article]
    }
    let author: String?
    let description: String?
    let title: String
    let url: String
    let urlToImage: String?
    
}
