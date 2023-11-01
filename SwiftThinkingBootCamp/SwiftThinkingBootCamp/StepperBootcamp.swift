//
//  StepperBootcamp.swift
//  SwiftThinkingBootCamp
//
//  Created by daya vijayan on 31/10/23.
//

import SwiftUI

struct StepperBootcamp: View {
    @State var steppervalue : Int = 10
    @State var widthIncrement : CGFloat = 0
    var body: some View {
        Stepper("Stepper:\(steppervalue)",value: $steppervalue)
            .padding(50)
        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/ )
            .frame(width:100 + widthIncrement, height: 100)
        Stepper("stepper 2"){
//            widthIncrement += 10
            incrementWidth(amount: 100)
        } onDecrement: {
           incrementWidth(amount: 100)
        }
    }
    func incrementWidth(amount: CGFloat){
        withAnimation(.easeInOut){
            widthIncrement  = amount
        }}
}

#Preview {
    StepperBootcamp()
}
