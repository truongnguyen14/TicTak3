//
//  Gameviewmodel.swift
//  TicTak
//
//  Created by Truong, Nguyen Tan on 30/08/2023.
//

import Foundation

class Gameviewmodel: ObservableObject {
    
    @Published private var gamemodel = Gamemodel()
    
    func getScore() -> Int {
        return gamemodel.getScore()
    }
    
    func changScore(to newScore: Int){
        return gamemodel.changeScore(to: getScore())
    }
}
