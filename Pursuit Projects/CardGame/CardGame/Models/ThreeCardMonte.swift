//
//  ThreeCardMonte.swift
//  CardGame
//
//  Created by Alfredo Barragan on 11/12/18.
//  Copyright © 2018 Alfredo Barragan. All rights reserved.
//

import UIKit


struct ThreeCardMonteImageString {
    static let threeCard = "threeCard"
    static let kingCard = "kingCard"
}




final class ThreeCardMonte: Card {
    var image: UIImage
    var isWinningCard: Bool
    
    
    init(image:UIImage, isWinningCard: Bool) {
        self.image = image
        self.isWinningCard = isWinningCard
    }
    
    static func getCards(numberOfCards: Int) -> [ThreeCardMonte] {
      var cards =  [ThreeCardMonte]()
        for index in 1...numberOfCards {
            var card: ThreeCardMonte!
            if index == 1 {
                card = ThreeCardMonte(image: UIImage(named: ThreeCardMonteImageString.kingCard)!, isWinningCard: true)
        
            } else {
                card = ThreeCardMonte(image: UIImage(named: ThreeCardMonteImageString.threeCard)!, isWinningCard: false)
            }
            cards.append(card)
        }
        
        return cards
    }
    
   
    
    
    
}
