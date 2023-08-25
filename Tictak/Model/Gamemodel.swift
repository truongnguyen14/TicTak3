//
//  Gamemodel.swift
//  TicTak
//
//  Created by Truong, Nguyen Tan on 30/08/2023.
//

import SwiftUI

struct Gamemodel{
    private(set) var score: Int
    
    init(){
        score = 0
    }
    
    func getScore() -> Int {
        return score
    }
    
    mutating func changeScore(to newScore: Int) {
        score = newScore
    }
}

