//
//  PaddingandSpacerBootCamp.swift
//  SwiftThinkingBootCamp
//
//  Created by daya vijayan on 25/10/23.
//

import SwiftUI

struct PaddingandSpacerBootCamp: View {
    var body: some View {
        //        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        //            .background(Color.yellow)
        //            .padding(.vertical,10)
        //            .padding(.leading,10)
        //            .background(Color.blue)
        VStack(alignment:.leading){
            Text("hello")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding(.bottom,20)
            //.frame(maxWidth:.infinity,alignment: .leading)
            //.background(Color.red)
            //.padding(.leading,20)
            Text("this is description to what we will do on this screen. It is multiple lines and we will align the text to the leading page")
            
        }
        
        .padding()
        .padding(.vertical,30)
            .background(
                Color.white
                    .cornerRadius(10)
                    .shadow(color:.black.opacity(0.3),radius:10,x:0.0,y:0.0)
            )
            .padding(.horizontal,10)
//            
    }}

#Preview {
    PaddingandSpacerBootCamp()
}
