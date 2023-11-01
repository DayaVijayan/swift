//
//  StateBootCamp.swift
//  SwiftThinkingBootCamp
//
//  Created by daya vijayan on 26/10/23.
//

import SwiftUI

struct StateBootCamp: View {
    @State var backgroundColor : Color = Color.green
    @State var myTitle : String = "MyTitle"
    @State var count : Int = 0
    var body: some View {
        ZStack{
            backgroundColor
                .ignoresSafeArea()
            VStack(spacing:20){
                Text(myTitle)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Text("Count\(count)")
                    .underline()
                HStack(spacing:20){
                    Button("Button1"){
                        backgroundColor = .red
                        count += 1
                   myTitle = "red"
                    }
                    Button("Button2"){
                        backgroundColor = .purple
                        myTitle = "purple"
                        count -= 1
                    }
                }.foregroundColor(.white)
            }
        }
    }
}

#Preview {
    StateBootCamp()
}
