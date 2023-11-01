//
//  SheetsBootcamp.swift
//  SwiftThinkingBootCamp
//
//  Created by daya vijayan on 27/10/23.
//

import SwiftUI

struct SheetsBootcamp: View {
    @State var showSheet : Bool = false
    var body: some View {
        ZStack{
            Color.green
                .ignoresSafeArea()
            Button(action: {
                showSheet.toggle()
            }, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(20))
            })
            .fullScreenCover(isPresented: $showSheet,content: {
                SecondScreen()
            })
//            .sheet(isPresented: $showSheet, content: {
////                Text("hello")
//                SecondScreen()
//            })
        }
    }
}
struct SecondScreen : View{
    @Environment (\.presentationMode) var presentationMode
    var body: some View{
        ZStack(alignment :.topLeading){
            Color.red
                .ignoresSafeArea()
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                ///*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
//                    .background(Color.white.cornerRadius(20))
            })
            
        }
    }
}
#Preview {
    SheetsBootcamp()
    //SecondScreen()
}
