//
//  ContentView.swift
//  Memorize
//
//  Created by Guilherme Calabria Lopes on 17.08.20.
//  Copyright © 2020 Guilherme Calabria Lopes. All rights reserved.
//

import SwiftUI

// A VIEW is just a rectangle on the screen.
struct ContentView: View {
    // The type of the property 'body' is ANY(some) type, as long as it behaves like a VIEW
    // Notice that the var 'body' has no assignment symbol (=). Instead, it uses curly brackets.
    // This means that this variable is not stored in memory. Instead, everytime the program needs it,
    // the value of body needs to me calculate.
    var body: some View {
        // The next line is equivalent to: return Text("Hello, World!")
        HStack {
            ForEach(0..<4) { index in
                CardView(isFaceUp: false)
            }
        }
        .padding()
        .foregroundColor(Color.green)
        .font(Font.largeTitle)
    }
}


struct CardView: View {
    var isFaceUp: Bool
    
    var body: some View {
        ZStack {
            if isFaceUp {
                            RoundedRectangle(cornerRadius: 20.0).fill(Color.white)
                            RoundedRectangle(cornerRadius: 20.0).stroke(lineWidth: 5)
                            Text("🥰")
            } else {
                RoundedRectangle(cornerRadius: 20.0).fill()
            }
        }
    }
}










struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
