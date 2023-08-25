//
//  Backgroundcolor.swift
//  Tictac
//
//  Created by Truong, Nguyen Tan on 26/08/2023.
//

import SwiftUI

struct Backgroundcolor: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color("RmitRed"), Color("Brightpurple")]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
        }
    }
}

struct Backgroundcolor_Previews: PreviewProvider {
    static var previews: some View {
        Backgroundcolor()
    }
}
