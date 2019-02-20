//
//  PhotoJournal.swift
//  ImagePickerDemo
//
//  Created by Alfredo Barragan on 1/14/19.
//  Copyright © 2019 Alfredo Barragan. All rights reserved.
//

import Foundation
struct PhotoJournal: Codable {
    let createdAt: String
    let imageData: Data
    let description: String
}
