//
//  Item.swift
//  ToDoList
//
//  Created by Alfredo Barragan on 1/11/19.
//  Copyright © 2019 Alfredo Barragan. All rights reserved.
//

import Foundation
struct Item: Codable {
    let title: String
    let description: String
    let createdAt: String
}
