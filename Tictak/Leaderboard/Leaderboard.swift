//
//  Leaderboard.swift
//  TicTak
//
//  Created by Truong, Nguyen Tan on 30/08/2023.
//

import SwiftUI

struct Leaderboard: View {
    
    @ObservedObject private var usermodel: Userviewmodel = Userviewmodel()
    
    var body: some View {
        let score = usermodel.getScores()
        let user = usermodel.getUsers()
        Group {
            //check if the point array is equal to username array
            if user.count > 0 && score.count > 0 && score.count == user.count {
                ScrollView {
                    VStack {
                        ForEach(usermodel.getUsers().indices, id: \.self) { index in
                            HStack {
                                Text(user[index])
                                Spacer()
                                Text("\(score[index])")
                            }
                            .padding()
                            .frame(maxWidth: .infinity, maxHeight: 200)
                            .foregroundColor(.white)
                            Divider()
                                .background(Color(.white))
                        }
                    }
                    .background(Color("Woodbrown"))
                    .cornerRadius(15)
                    Spacer()
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding()
                .ignoresSafeArea(.all, edges: .bottom)
                .background(Color("Casinogreen")
                    .ignoresSafeArea())
            } else {
                //if there is no user
                Text("No current user")
            }
            
        }
        //start and stop background music
//        .onAppear {
//            MusicPlayer.shared.startBackgroundMusic(backgroundMusicFileName: "grand-final-orchestral")
//        }
//        .onDisappear {
//            MusicPlayer.shared.stopBackgroundMusic()
//        }
        .navigationTitle("Leaderboard")
    }
}

struct Leaderboard_Previews: PreviewProvider {
    static var previews: some View {
        Leaderboard()
    }
}
