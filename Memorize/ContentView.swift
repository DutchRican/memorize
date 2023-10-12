//
//  ContentView.swift
//  Memorize
//
//  Created by Paul van Woensel on 10/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFaceUp: true)
            CardView()
            CardView()
            CardView()
        }
            .foregroundColor(.orange)
        .padding()
        
    }
}

#Preview {
    ContentView()
}
