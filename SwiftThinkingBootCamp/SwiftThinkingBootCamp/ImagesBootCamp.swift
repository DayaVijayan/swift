//
//  ImagesBootCamp.swift
//  SwiftThinkingBootCamp
//
//  Created by daya vijayan on 25/10/23.
//

import SwiftUI

struct ImagesBootCamp: View {
    var body: some View {
//        Image("sanal")
//            .resizable()
////            .aspectRatio(contentMode: .fit)
////            .scaledToFit()
//            .scaledToFill()
//            .frame(width:300 ,height: 200)
////            .cornerRadius(150)//to get a perfect circle set it as half of one of the (width or height) = 300 if both are same//
////            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
        ///i
        Image("messenger")
            .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
            .resizable()
            .scaledToFit()
            .frame(width:300 ,height: 200)
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        
    }
}

#Preview {
    ImagesBootCamp()
}
