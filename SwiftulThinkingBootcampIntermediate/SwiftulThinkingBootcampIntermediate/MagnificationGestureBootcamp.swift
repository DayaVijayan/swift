//
//  MagnificationGestureBootcamp.swift
//  SwiftulThinkingBootcampIntermediate
//
//  Created by daya vijayan on 02/11/23.
//

import SwiftUI

struct MagnificationGestureBootcamp: View {
    @State var currentAmount : CGFloat = 0
    @State var lastamount : CGFloat = 0
    var body: some View {
        
        VStack{
            HStack{
                Circle().frame(width:35,height: 35)
                Text("Swiftful Thinking")
                Spacer()
                    Image(systemName: "ellipsis")
            }.padding()
            Rectangle().frame(height:300)
                .scaleEffect(1 + currentAmount)
                .gesture(
                    MagnificationGesture()
                        .onChanged{ value  in
                            currentAmount = value - 1
                        }
                        .onEnded{ value in
                            withAnimation (.spring()){
                                currentAmount = 0
                            }
                           
                        }
                )
        }
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .font(.title)
//            .padding(40)
//            .background(Color.red.cornerRadius(10))
//            .scaleEffect(1 + currentAmount)
//            .gesture(
//                MagnificationGesture()
//                    .onChanged{ value in
//                        currentAmount = value - 1
//                    }
//                    .onEnded{ value in
//                        lastamount += currentAmount
//                        currentAmount = 0
//                    }
//            )
    }
}

#Preview {
    MagnificationGestureBootcamp()
}
