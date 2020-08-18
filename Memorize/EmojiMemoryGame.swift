//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Guilherme Calabria Lopes on 18.08.20.
//  Copyright © 2020 Guilherme Calabria Lopes. All rights reserved.
//

import Foundation

class EmojiMemoryGame: ObservableObject {
    @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: [String] = ["🐵", "🐭", "🐰", "🦊", "🐻", "🐷", "🐝", "🐼", "🐙"]
        
        return MemoryGame<String>(numberOfPairsOfCards: 3){ pairIndex in emojis[pairIndex] }
    }
    
    // MARK: - Access to the Model
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}
