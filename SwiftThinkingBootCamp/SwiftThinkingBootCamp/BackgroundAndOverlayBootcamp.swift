//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftThinkingBootCamp
//
//  Created by daya vijayan on 25/10/23.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)  
//            .background(
//                Circle()
//                    .fill(LinearGradient(gradient: /*@START_MENU_TOKEN@*/Gradient(colors: [Color.red, Color.blue])/*@END_MENU_TOKEN@*/, startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
//                    .frame(width:200,height:200,alignment: .center)
//            )
//            .background(
//                Circle()
//                    .fill(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.red]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
//                    .frame(width:300,height:300,alignment: .center)
//            )
//        Text("hello")
//        Circle()
//            .fill(Color.pink)
//            .frame(width:120,height:120)
//            .overlay(
//                Text("1")
//                    .font(.largeTitle)
//                    .foregroundColor(.white)
//            )
//            .background(
//                Circle()
//                    .fill(Color.yellow)
//                    .frame(width:180,height:180)
//            )
//        Rectangle()
//            .frame(width:100,height:100)
//            .overlay(
//                Rectangle()
//                    .fill(Color.blue)
//                    .frame(width:50,height:50),alignment: .center
//            )
//            .background(
//                Rectangle()
//                    .fill(Color.red)
//                    .frame(width:150,height: 150),alignment: .center
//            )
        Image(systemName: "heart.fill")
            .font(.system(size:40))
            .foregroundColor(.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(gradient: /*@START_MENU_TOKEN@*/Gradient(colors: [Color.red, Color.blue])/*@END_MENU_TOKEN@*/, startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
                    )
                    .frame(width:100,height:100)
                    .shadow(color: .blue,radius:10,x:0.0,y:10)
                    .overlay(
                        Circle()
                            .fill(Color.green)
                            .frame(width:35,height: 35)
                            .overlay(
                                Text("12")
                                    .shadow(color: .yellow,radius:10,x:5,y:5)
                            )
                            .shadow(color: .blue,radius:10,x:5,y:5)
                        ,alignment: .bottomTrailing
                    )
                
            )
    }
}

#Preview {
    BackgroundAndOverlayBootcamp()
}
