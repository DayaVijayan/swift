//
//  ScrollViewBootCamp.swift
//  SwiftThinkingBootCamp
//
//  Created by daya vijayan on 26/10/23.
//

import SwiftUI

struct ScrollViewBootCamp: View {
    var body: some View {
//        ScrollView(.vertical, showsIndicators: false, content:{
//            VStack{
//                ForEach (0..<50){index in
//                    Rectangle()
//                        .fill(.yellow)
//                        .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
//                }
//            }
//        })
        ScrollView{
            VStack{
                ForEach(0..<10){ index in
                    ScrollView(.horizontal, showsIndicators:false,content: {
                        HStack{
                            ForEach(0..<20){index in
                                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                    .fill(.white)
                                    .frame(width:200,height: 100)
                                    .shadow(radius: 10, x:10,y:10)
                                    .padding()
                            }}
                    })
                }
            }
        }
    }
}

#Preview {
    ScrollViewBootCamp()
}
