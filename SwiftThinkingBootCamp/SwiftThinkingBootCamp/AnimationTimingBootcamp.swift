//
//  AnimationTimingBootcamp.swift
//  SwiftThinkingBootCamp
//
//  Created by daya vijayan on 27/10/23.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    @State var isAnimating : Bool = false
    @State var timing : Double = 10
    var body: some View {
        VStack{
            Button("Button"){
                isAnimating.toggle()
            }
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .frame(width:isAnimating ? 350 : 50 , height : 100)
                .animation(.spring(
                    response: 3.0,
                          dampingFraction: 1.0,
                           blendDuration: 1.0
                             ))
//                .animation(Animation.linear(duration: timing))
//            RoundedRectangle(cornerRadius: 25.0)
//                .frame(width:isAnimating ? 350 : 50 , height : 100)
//                .animation(Animation.linear(duration: timing))
//            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
//                .frame(width:isAnimating ? 350 : 50 , height : 100)
//                .animation(Animation.linear(duration: timing))
//            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
//                .frame(width:isAnimating ? 350 : 50 , height : 100)
//                .animation(Animation.linear(duration: timing))
            
        }
    }
}

#Preview {
    AnimationTimingBootcamp()
}
