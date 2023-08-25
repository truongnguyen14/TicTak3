//
//  Homeview.swift
//  Tictac
//
//  Created by Truong, Nguyen Tan on 26/08/2023.
//

import SwiftUI

struct Homeview: View {
    
    @State private var showinghowtoplayview = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Menubackgroundcolor()
                VStack {
                    VStack{
                        Spacer()
                        Text("Choose your levels")
                            .foregroundColor(.white)
                            .font(.system(size: 30,weight: .bold))
                        NavigationLink{
                            Map2()
                        }label: {
                            Text("Easy")
                                .padding()
                        }
                        .modifier(Buttonmodifier())
                        .padding()
                        
                        NavigationLink{
                            Map2()
                        }label: {
                            Text("Medium")
                                .padding()
                        }
                        .modifier(Buttonmodifier())
                        .padding()
                        
                        NavigationLink{
                            Map2()
                        }label: {
                            Text("Hard")
                                .padding()
                        }
                        .modifier(Buttonmodifier())
                        .padding()
                    }
                    .padding(.bottom, 35)
                    
                    Spacer()
                    
                    HStack(alignment: .center){
                        Button(action: {
                            self.showinghowtoplayview = true
                        }) {
                            Text("How To Play")
                                .padding(15)
                        }
                        .modifier(Buttonfunction(color: Color("Blue")))
                        .modifier(Shadow())
                        .padding(.bottom, 10)
                        .padding()
                        
                        NavigationLink{
                            Setting()
                        }label: {
                            Text("Setting")
                                .padding(15)
                        }
                        .modifier(Buttonfunction(color: Color("Blue")))
                        .modifier(Shadow())
                        .padding(.bottom, 10)
                        .padding()
                    }
                    
                    Spacer()
                    
                    NavigationLink{
                        Leaderboard()
                    }label: {
                        Text("Leaderboard")
                            .padding(15)
                    }
                    .modifier(Buttonfunction(color: Color("Blue")))
                    .modifier(Shadow())
                }
            }
        }.sheet(isPresented: $showinghowtoplayview) {
            Informationview()
          }
    }
}

struct Homeview_Previews: PreviewProvider {
    static var previews: some View {
        Homeview()
    }
}
