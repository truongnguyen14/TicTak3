//
//  Howtoplay.swift
//  Tictac
//
//  Created by Truong, Nguyen Tan on 28/08/2023.
//

import SwiftUI

struct Howtoplay: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack{
            Menubackgroundcolor()
            VStack(alignment: .center, spacing: 10) {
                            
              Spacer()
              
              Form {
                Section(header: Text("How to play")) {
                    Text("The game is played on a grid that's 3 circle by 3 circle or 4 circle by 4 circle depend on player choose the level of the game.")
                    Text("Players are X, the computer is O. Players and computer will take turn to fill the empty circle.")
                    Text("The first side to get n X (n: depend on the winning condition) in row (horizontal, vertical, diagonally) is the winner ")
                    Text("If the computer get 3 O in row first, player will lose the game and minus point.")
                    Text("If the player lose the at the first round or the score under 0, the game will be over.")
                    Text("When all cicrles are full, the game will clear and the game will continue playing until one of side win the game")
                }
                  Section(header: Text("Level information")) {
                      HStack {
                          Text("In each level will have different requirement to win the game: ")
                      }
                      VStack(alignment: .leading){
                          Text("Level: Easy")
                          Spacer()
                          Text("Circles: 3 by 3")
                          Spacer()
                          Text("Winning condition: 3 X in a row")
                          Spacer()
                          Text("Computer moves: 1")
                      }
                      VStack(alignment: .leading){
                          Text("Level: Medium")
                          Spacer()
                          Text("Circles: 4 by 4")
                          Spacer()
                          Text("Winning condition: 4 X in a row")
                          Spacer()
                          Text("Computer moves: 1")
                      }
                      VStack(alignment: .leading){
                          Text("Level: Hard")
                          Spacer()
                          Text("Circles: 8 by 8")
                          Spacer()
                          Text("Winning condition: 8 X in a row")
                          Spacer()
                          Text("Computer moves: 2")
                      }
                }
                  Section(header: Text("Game Icon")){
                      HStack{
                          Text("Player:")
                          Spacer()
                          XOButton(letter: .constant("X"))
                      }
                      HStack{
                          Text("Computer:")
                          Spacer()
                          XOButton(letter: .constant("O"))
                      }
                  }
              }
              .font(.system(.body, design: .rounded))
            }
            .padding(.top, 40)
            .overlay(
              Button(action: {
                dismiss()
              }) {
                Image(systemName: "xmark.circle")
                  .font(.title)
              }
              .foregroundColor(.white)
              .padding(.top, 15)
              .padding(.trailing, 20),
              alignment: .topTrailing
              )
        }
    }
}

struct Howtoplay_Previews: PreviewProvider {
    static var previews: some View {
        Howtoplay()
    }
}
