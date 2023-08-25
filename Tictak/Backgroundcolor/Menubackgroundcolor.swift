//
//  Menubackgroundcolor.swift
//  Tictac
//
//  Created by Truong, Nguyen Tan on 28/08/2023.
//

import SwiftUI

struct Menubackgroundcolor: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color("Brightpurple"), Color("Yellow"),Color("RmitRed")]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
        }
    }
}

struct Menubackgroundcolor_Previews: PreviewProvider {
    static var previews: some View {
        Menubackgroundcolor()
    }
}
