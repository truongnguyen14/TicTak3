//
//  UserRegisterview.swift
//  TicTak
//
//  Created by Truong, Nguyen Tan on 29/08/2023.
//

import SwiftUI

struct UserRegister: View {
    @Binding var name: String
    @State private var empty = false
    @ObservedObject var Usermodel: Userviewmodel = Userviewmodel()
    @Binding var registerButton: Bool
    @Binding var PopUp: Bool
    
    var body: some View {
        //Show when user access to game view
        if !PopUp {
            ZStack {
                Color.black.opacity(!PopUp ? 0.8 : 0.4 ).edgesIgnoringSafeArea(.all)
                ZStack {
                    Color("Casinogreen")
                    VStack{
                        Text("Register")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                        HStack {
                            Text("User name: ")
                                .foregroundColor(.white)
                                .bold()
                            TextField(
                                "Enter user name",
                                text: $name
                            )
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .cornerRadius(15)
                        }
                        Spacer()
                        //Condition check about user register name
                        if(empty) {
                            Text("Please enter your name")
                                .foregroundColor(Color("Red"))
                        } else {}
                        Button {
                            //Check empty name
                             if (name == "") {
                                empty = true;
                            }
                            else {
                                registerButton = true
                                empty = false
                                PopUp = true
                                Usermodel.addUser(name)
                            }
                        } label: {
                            Text("Play game")
                                .padding(5)
                        }
                        .modifier(Buttonfunction(color: Color("Bronzegold")))
                        .modifier(Shadow())
                    }
                    .padding()
                }
                .frame(width: 300, height: 300)
                .cornerRadius(30)
            }
        }
    }
}

struct UserRegister_Previews: PreviewProvider {
    static var previews: some View {
        @ObservedObject var usermodel: Userviewmodel = Userviewmodel()
        @State var name = ""
        @State var popup = false
        @State var registerbutton: Bool = false
        
        UserRegister(name: $name, Usermodel: usermodel, registerButton: $registerbutton, PopUp: $popup)
    }
}
