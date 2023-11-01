//
//  ColorBootCamp.swift
//  SwiftThinkingBootCamp
//
//  Created by daya vijayan on 25/10/23.
//

import SwiftUI

struct ColorBootCamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
//            .fill(.primary)to use both in light and dark mode perfectly
            .fill(
//                Color(UIColor.red)
//                Color(UIColor.secondarySystemBackground)
            Color("CustomColor")
            )
            .frame(width: 300, height: 200)
//            .shadow(radius:10)
            .shadow(color:Color.gray,radius: 10,x:-20,y:-20)
//            .shadow(color:Color("CustomColor").opacity(0.3),radius: 10,x:-20,y:-20)
    }
}

#Preview {
    ColorBootCamp()
}
