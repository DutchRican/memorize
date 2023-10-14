//
//  ContentView.swift
//  Memorize
//
//  Created by Paul van Woensel on 10/12/23.
//

import SwiftUI

// 😈 ☠️
struct ContentView: View {
    let emojis = ["🎃","👻","😈", "☠️" ,"🧟", "🕷️", "🧙", "🙀", "👹", "💀", "😱", "🍭"]
    
    @State var cardCount = 4
    var body: some View {
        VStack {
            ScrollView {
                cards
            }
            Spacer()
            cardCountAdjusters
        }
        .padding()
    }
    
    var cards: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]) {
            ForEach(0..<cardCount, id:\.self) { index in
                CardView(content: emojis[index])
                    .aspectRatio(2/3, contentMode: .fit)
            }
        }
        .foregroundColor(.orange)
    }
    
    var cardCountAdjusters: some View {
        HStack {
            cardCountAdjuster(by: -1, symbol: "rectangle.stack.badge.minus")
            Spacer()
            cardCountAdjuster(by: 1, symbol: "rectangle.stack.badge.plus")
        }
        .imageScale(.large)
        .font(.largeTitle)
    }
    
    func cardCountAdjuster(by offset: Int, symbol: String) -> some View {
        Button(action: {
            cardCount = cardCount + offset
        }) {
            Image(systemName: symbol)
        }
        .disabled(cardCount + offset < 2 || cardCount + offset > emojis.count)
    }
}

#Preview {
    ContentView()
}
