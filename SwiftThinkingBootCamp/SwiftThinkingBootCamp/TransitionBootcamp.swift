//
//  TransitionBootcamp.swift
//  SwiftThinkingBootCamp
//
//  Created by daya vijayan on 27/10/23.
//

import SwiftUI

struct TransitionBootcamp: View {
    @State var showView : Bool = false
    var body: some View {
        ZStack(alignment:.bottom){
            VStack{
                Button("Button"){
                    showView.toggle()
                }
                Spacer()
            }
            if showView{
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
//                    .transition(.slide)
////                    .transition(.move(edge : .bottom))//good//
//                    .transition(AnyTransition.opacity.animation(.easeInOut))
//                    .transition(AnyTransition.scale.animation(.easeInOut))
                    .transition(.asymmetric(
                        insertion: .move(edge:.leading),
                        removal: .move(edge:.bottom)
                    ))
                    .animation(.easeInOut)
            }
        }
    }
}

#Preview {
    TransitionBootcamp()
}
