//
//  Buttonmodifier.swift
//  Tictac
//
//  Created by Truong, Nguyen Tan on 26/08/2023.
//

import SwiftUI

struct Buttonmodifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(10)
            .frame(width: 150, height: 55)
            .background(LinearGradient(colors: [Color("RmitRed"), Color("Brightpurple")], startPoint: .bottom, endPoint: .top))
            .foregroundColor(.white)
            .fontWeight(.heavy)
            .cornerRadius(15)
    }
}

struct Buttonfunction: ViewModifier {
    var color: Color
    func body(content: Content) -> some View {
        content
            .padding(10)
            .frame(width: 200)
            .background(color)
            .foregroundColor(.white)
            .fontWeight(.heavy)
            .cornerRadius(15)
    }
}

struct Shadow: ViewModifier {
    func body(content: Content) -> some View {
        content
            .shadow(color:Color("Shadow"), radius: 5)
    }
}

