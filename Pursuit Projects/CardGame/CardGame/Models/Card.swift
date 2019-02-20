//
//  Card.swift
//  CardGame
//
//  Created by Alfredo Barragan on 11/12/18.
//  Copyright © 2018 Alfredo Barragan. All rights reserved.
//

import UIKit

protocol Card {
    var image: UIImage { get }
    static func getCards(numberOfCards: Int) -> [Self]
}
