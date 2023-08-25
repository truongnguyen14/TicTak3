//
//  Informationview.swift
//  Tictac
//
//  Created by Truong, Nguyen Tan on 28/08/2023.
//

import SwiftUI

struct Informationview: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack{
            Menubackgroundcolor()
            VStack(alignment: .center, spacing: 10) {
                            
              Spacer()
              
              Form {
                Section(header: Text("App information")) {
                    HStack{
                        Text("App name")
                        Spacer()
                        Text("TicTaK")
                    }
                    HStack{
                        Text("Genre")
                        Spacer()
                        Text("Paper-and-pencil game")
                    }
                    HStack{
                        Text("Year published")
                        Spacer()
                        Text("2023")
                    }
                    HStack{
                        Text("Version")
                        Spacer()
                        Text("Beta 1.0.0")
                    }
                }
                  Section(header: Text("Author")) {
                      HStack {
                        Text("Name")
                        Spacer()
                        Text("Nguyen Tan Truong")
                      }
                      HStack{
                          Text("Student ID")
                          Spacer()
                          Text("s3754703")
                      }
                      HStack {
                        Text("Course")
                        Spacer()
                        Text("COSC2659")
                      }
                      HStack {
                        Text("Program")
                        Spacer()
                        Text("BP162")
                      }
                      HStack {
                        Text("Location")
                        Spacer()
                        Text("Saigon South Campus")
                      }
                }
              }
              .font(.system(.body, design: .rounded))
            }
            .padding(.top, 40)
            .overlay(
              Button(action: {
                audioPlayer?.stop()
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
              .onAppear(perform: {
                playSound(sound: "drum-music", type: "mp3")
              })
        }
    }
}

struct Informationview_Previews: PreviewProvider {
    static var previews: some View {
        Informationview()
    }
}
