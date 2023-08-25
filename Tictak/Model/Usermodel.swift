//
//  Usermodel.swift
//  TicTak
//
//  Created by Truong, Nguyen Tan on 29/08/2023.
//

import Foundation

struct Usermodel {
    private(set) var user: [String]
    private(set) var scores: [Int]
    
    private let database = UserDefaults.standard
    
    //Initialize and store the data in userdefaults
    init() {
        user = database.object(forKey: "User") as? [String] ?? []
        scores = database.object(forKey: "Score") as? [Int] ?? []
    }
    
    //Get users
    func getUsers() -> [String] {
        return user
    }
    
    //Get points
    func getScores() -> [Int] {
        return scores
    }
    
    //Add user into the array
    mutating func addUser(_ info: String) {
        user.append(info)
        database.set(user, forKey: "User")
        print(user)
    }
    
    //Add point into the array
    mutating func addScore(_ score: Int) {
        scores.append(score)
        database.set(scores, forKey: "Score")
        print(scores)
    }
    
    //Get the point from a specific user
    func getScore(name: String) -> Int {
        let index = user.firstIndex(of: name) ?? 0
        return scores[index]
    }
    
    //Update point along side when user is playing
    mutating func updateLastScore(score: Int) {
        let idx = user.count - 1
        self.scores[idx] = score
        database.set(self.scores, forKey: "Score")
    }
}
