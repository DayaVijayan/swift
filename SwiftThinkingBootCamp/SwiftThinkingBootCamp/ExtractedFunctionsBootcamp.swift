//
//  ExtractedFunctionsBootcamp.swift
//  SwiftThinkingBootCamp
//
//  Created by daya vijayan on 26/10/23.
//

import SwiftUI

struct ExtractedFunctionsBootcamp: View {
    @State var backgroundColor : Color = Color.yellow
    var body: some View {
        ZStack{
            //background
            backgroundColor
                .ignoresSafeArea()
            //content
            contentLayer
        }
    }
    var contentLayer: some View{
        VStack(spacing:20){
            Text("Title")
                .font(.largeTitle)
            Button(action: {
                buttonPressed()
            }, label: {
                Text("Press me!".uppercased())
                    .font(.headline)
                    .foregroundStyle(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            })
            
            
        }}
    func buttonPressed(){
        backgroundColor = .green
    }
}
#Preview {
    ExtractedFunctionsBootcamp()
}
