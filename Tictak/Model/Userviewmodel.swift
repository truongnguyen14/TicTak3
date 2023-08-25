//
//  Userviewmodel.swift
//  TicTak
//
//  Created by Truong, Nguyen Tan on 29/08/2023.
//

import Foundation

class Userviewmodel: ObservableObject {
    
    @Published private var usermodel = Usermodel()

    //get users from User model
    func getUsers() -> [String] {
        usermodel.getUsers()
    }

    //Get a user point from the User model
    func getScore(name: String) -> Int {
        usermodel.getScore(name: name)
    }

    //Add more user in User Model and initialize first score = 0
    func addUser(_ info: String) {
        print(info)
        usermodel.addUser(info)
        usermodel.addScore(0)
    }

    //Add point to the User model
    func addScore(_ score: Int) {
        usermodel.addScore(score)
        print(score)
    }

    //Get all points from user model
    func getScores() -> [Int] {
        usermodel.getScores()
    }

    //upfate point while user is playing
    func updateScore(score: Int) {
        usermodel.updateLastScore(score: score)
    }
}
