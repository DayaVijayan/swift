//
//  StacksBootCamp.swift
//  SwiftThinkingBootCamp
//
//  Created by daya vijayan on 25/10/23.
//

import SwiftUI

struct StacksBootCamp: View {
    //VStacks  -> vertical
    //HSatcks -> horizontal
    //ZStack -> back to front
    var body: some View {
//        VStack(alignment: .leading, spacing: 0, content: {
//            Rectangle()
//                .fill(Color.red)
//                .frame(width:300,height:300)
//            Rectangle()
//                .fill(Color.green)
//                .frame(width:200,height: 200)
//            Rectangle()
//                .fill(Color.yellow)
//                .frame(width:100,height: 100)
//            
//        })
//        HStack{
//            Rectangle()
//                .fill(Color.red)
//                .frame(width:100,height:100)
//            Rectangle()
//                .fill(Color.green)
//                .frame(width:100,height: 100)
//            Rectangle()
//                .fill(Color.yellow)
//                .frame(width:100,height: 100)
//        }
//        ZStack{
//            Rectangle()
//                .fill(Color.red)
//                .frame(width:300,height:300)
//            Rectangle()
//                .fill(Color.green)
//                .frame(width:250,height: 250)
//            Rectangle()
//                .fill(Color.yellow)
//                .frame(width:200,height: 200)
//        }
        VStack(spacing:50){
            ZStack{
                Circle()
                    .frame(width:100,height:100)
                Text("1")
                    .font(.title)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            }
            Text("1")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .background(
                Circle()
                    .frame(width:100,height:100)
                )
        }
    }
}

#Preview {
    StacksBootCamp()
}
