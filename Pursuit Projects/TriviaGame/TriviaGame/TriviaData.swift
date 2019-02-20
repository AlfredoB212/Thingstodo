//
//  TriviaData.swift
//  TriviaGame
//
//  Created by Alfredo Barragan on 12/6/18.
//  Copyright © 2018 Alfredo Barragan. All rights reserved.
//

import Foundation

struct TriviaData: Codable {
    let response_code: Int
    let results: [ResultWrapper]
}
    struct ResultWrapper: Codable {
    let category: String
    let question: String
    let correct_answer: String
    let incorrect_answers: [String]
}

