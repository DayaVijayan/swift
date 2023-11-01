//
//  SafeAreaBootcamp.swift
//  SwiftThinkingBootCamp
//
//  Created by daya vijayan on 26/10/23.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
//        ZStack {
//            Color.blue
//                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
//           
//            VStack {
//                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                Spacer()
//            }.frame(maxWidth: .infinity,maxHeight:.infinity)
//               //.background(Color.)
//            
//        }
//        ZStack {
//            
//            Color.blue
//                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            ScrollView{
                VStack{
                    Text("Title goes here")
                        .font(.largeTitle)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    ForEach(0..<10){ index in
                        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                            .fill(Color.white)
                            .frame(height:70)
                            .shadow(radius:10)
                            .padding()
                    }
                }
            }
            .background(
                Color.red
//                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)//old
                    .ignoresSafeArea(edges:.all)
            )

        //}
    }
}

#Preview {
    SafeAreaBootcamp()
}
