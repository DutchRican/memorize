//
//  ContentView.swift
//  Memorize
//
//  Created by Paul van Woensel on 10/12/23.
//

import SwiftUI

// 😈 ☠️
struct ContentView: View {
    let emojis = ["😈", "☠️" ,"🧟", "🎃","👻", "🕷️"]
    var body: some View {
        HStack {
            ForEach(emojis.indices, id:\.self) { index in
                CardView(content: emojis[index])
            }
        }
        .foregroundColor(.orange)
        .padding()
        
    }
}

#Preview {
    ContentView()
}
