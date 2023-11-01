//
//  BindingBootCamp.swift
//  SwiftThinkingBootCamp
//
//  Created by daya vijayan on 26/10/23.
//

import SwiftUI

struct BindingBootCamp: View {
    @State var backgroundColor : Color = Color.green
    @State var title : String = "this is the default titile"
    var body: some View {
        ZStack{
            backgroundColor.ignoresSafeArea()
            
            VStack (spacing:30){
                Text(title)
                    .underline()
                View1(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}

#Preview {
    BindingBootCamp()
}

struct View1: View {
    @Binding var backgroundColor: Color
    @State var insideColor : Color = Color.purple
    @Binding var title: String
    var body: some View {
        Button(action: {
            backgroundColor = Color.orange
            insideColor = Color.white
            title = "pressed"
        }, label: {
            Text("Button")
                .foregroundColor(insideColor)
        })
    }
}
