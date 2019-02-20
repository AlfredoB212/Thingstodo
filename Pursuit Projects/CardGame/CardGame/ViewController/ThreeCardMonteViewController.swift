//
//  ThreeCardMonteViewController.swift
//  CardGame
//
//  Created by Alfredo Barragan on 11/12/18.
//  Copyright © 2018 Alfredo Barragan. All rights reserved.
//

import UIKit

class ThreeCardMonteViewController: UIViewController {
    


    @IBOutlet var allCardButtons: [UIButton]!
    @IBOutlet weak var newGame: UIButton!
    @IBOutlet weak var winningStatusLabel: UILabel!
    
    var cards = ThreeCardMonte.getCards(numberOfCards: 3)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cards = cards.shuffled()
       
    }
    
    
    @IBAction func flippedCard(_ cardButton: UIButton) {
        let card = cards[cardButton.tag]
        allCardButtons[cardButton.tag].setImage(card.image, for: .normal)
        if !card.isWinningCard {
            for (index, card) in cards.enumerated() {
                if card.image == UIImage(named: ThreeCardMonteImageString.kingCard) {
                    allCardButtons[index].setImage(card.image, for: .normal)
                    break
                }
            }
        } else {
            print("winning card turned")
        }
        allCardButtons.forEach { $0.isEnabled = false }
        winningStatusLabel.text = card.isWinningCard ? "You won!" : "You lost!"
        allCardButtons.forEach { $0.isEnabled = false }
    }
    
    
    
    @IBAction func newGame(_ newGameButton: UIButton) {
       cards = cards.shuffled()
        allCardButtons.forEach { $0.isEnabled = true }
        allCardButtons.forEach { $0.setImage(UIImage(named: "cardBackRed"), for: .normal) }
    }
    
}
