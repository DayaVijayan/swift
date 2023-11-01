//
//  AnimationBootcamp.swift
//  SwiftThinkingBootCamp
//
//  Created by daya vijayan on 27/10/23.
//

import SwiftUI

struct AnimationBootcamp: View {
    @State var isAnimated : Bool = false
    var body: some View {
        VStack{
            Button("Button"){
                /*withAnimation(.default)*/
                /*withAnimation(Animation.default.delay(2.0))*/
                /*withAnimation(Animation.default.repeatCount(5, autoreverses: true))*/
                /*withAnimation(Animation.default.repeatForever(autoreverses: true))*/
                    isAnimated.toggle()
                            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(
                    width: isAnimated ? 100 :300,
                    height: isAnimated ? 100 :300)
                .rotationEffect(Angle(degrees: isAnimated ? 180 : 0))
                .offset(y: isAnimated ? 150 : 0)
                .animation(Animation.default.repeatForever(autoreverses: true))
                Spacer()
        }
    }
}

#Preview {
    AnimationBootcamp()
}
