//
//  ButtonBootCamp.swift
//  SwiftThinkingBootCamp
//
//  Created by daya vijayan on 26/10/23.
//

import SwiftUI

struct ButtonBootCamp: View {
    @State var title = "this is my title"
    var body: some View {
        VStack(spacing:20){
            Text(title)
            
            Button( "Press me!"){
                self.title = "BUTTON  #1 WAS PRESSED"
            }.accentColor(.red)
            Button(action: {
                self.title = "BUTTON #2 WAS PRESSED"
            }, label: {
                Text("Button2".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal,20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius:10)
                    )
            })
            Button(action: {
                self.title = "Button #3 was clicked"
            }, label: {
                Circle()
                    .fill(Color.white)
                    .frame(width:75,height:75)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.red)
                    )
                   
                
            })
            Button(action: {
                self.title = "Button #4 was clicked"
            }, label: {
                Text("Finished".uppercased())
                    .font(.subheadline)
                    .bold()
                    .padding()
                    .padding(.horizontal,20)
                    .foregroundColor(.gray)
                    .background(
                        Capsule()
                            .stroke(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/, lineWidth: 2)
                    )
                
            })
        }
    }}

#Preview {
    ButtonBootCamp()
}
