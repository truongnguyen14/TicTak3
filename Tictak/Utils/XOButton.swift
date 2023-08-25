//
//  XOButton.swift
//  TicTacToe
//
//  Created by Federico on 11/01/2022.
//

import SwiftUI

struct XOButton: View {
    @Binding var letter: String
    @State private var degrees = 0.0
    
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 80, height: 80)
                .foregroundColor(Colorconstant.bronzegold)
            Circle()
                .frame(width: 60, height: 60)
                .foregroundColor(Colorconstant.casinogreen)
            Text(letter)
                .font(.system(size: 40))
                .foregroundColor(.white)
                .bold()
        }
        .aspectRatio(contentMode: ContentMode.fit)
        .rotation3DEffect(.degrees(degrees), axis: (x: 0, y: 0, z: 1))
        .simultaneousGesture(
            TapGesture()
                .onEnded { _ in
                    withAnimation(.easeIn(duration: 0.4)) {
                        self.degrees += 180
                        self.degrees += 180
                    }
                }
        )
    }
}


struct XOButton_Previews: PreviewProvider {
    static var previews: some View {
        XOButton(letter: .constant("X"))
    }
}
