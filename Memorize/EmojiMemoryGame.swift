//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Guilherme Calabria Lopes on 18.08.20.
//  Copyright © 2020 Guilherme Calabria Lopes. All rights reserved.
//

import Foundation

// Classes are easy to share, because it uses pointers.
// We want our ViewModel to be accessed by many different views, so we need an easy way to share it.
// Thats why we choose to use a class instead of a struct.
class EmojiMemoryGame {
    // The advantage of classes is that they are easily sharable.
    // However this also makes classes vulnerable to unwanted changes.
    // To protect the our objects more, when can make the properties of
    // the classes private. Like this, properties can only be accessed by an
    // instance of EmojiMemoryGame
    // private var model: MemoryGame<String>
    
    // By using private(set), we make sure that everybody can READ the properties,
    // but only instances of this class can modify it.
    // private(set) var model: MemoryGame<String>
    
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: [String] = ["🐵", "🐭", "🐰", "🦊", "🐻", "🐷", "🐝", "🐼", "🐙"]
        
        return MemoryGame<String>(numberOfPairsOfCards: 4){ pairIndex in emojis[pairIndex] }
    }
    
    // MARK: - Access to the Model
    
    var cards: Array<MemoryGame<String>.Card> {
        // return model.cards
        model.cards
    }
    
    
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
