//
//  ConditionalBootcamp.swift
//  SwiftThinkingBootCamp
//
//  Created by daya vijayan on 26/10/23.
//

import SwiftUI

struct ConditionalBootcamp: View {
    @State var showCircle : Bool = false
    @State var ShowRectangle : Bool = false
    @State var isLoading : Bool = false
    var body: some View {
        VStack(spacing:20){
            Button("Is Loading:\(isLoading.description)"){
                isLoading.toggle()
            }
            if isLoading{
                ProgressView()
            }
//            Button("Circle Button \(showCircle.description)"){
//                showCircle.toggle()
//            }
//            Button("Rectangle \(ShowRectangle.description)"){
//                ShowRectangle.toggle()
//            }
//            if showCircle{
//                Circle()
//                    .frame(width:50,height: 50)
//            }
//            else if ShowRectangle{
//                Rectangle()
//                    .frame(width:100,height:100)
//            }else{
//                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
//                    .frame(width:100,height: 100)
//            }
//            if showCircle{
//                Circle()
//                    .frame(width:50,height: 50)
//            }
//            if ShowRectangle{
//                Rectangle()
//                    .frame(width:100,height:100)
//            }
//            if showCircle && ShowRectangle{
//                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
//                    .frame(width:100,height: 100)
//            }
            Spacer()
        }
    }
}

#Preview {
    ConditionalBootcamp()
}
