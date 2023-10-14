//
//  CardView.swift
//  Memorize
//
//  Created by Paul van Woensel on 10/12/23.
//

import SwiftUI

struct CardView: View {
    @State var isFaceUp = true
    let content: String
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base
                    .foregroundColor(.white)
                base
                    .strokeBorder(lineWidth: 4)
                Text(content).font(.largeTitle)
            } else {
                base
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}

#Preview {
    CardView(isFaceUp: true, content: "🎃")
}
