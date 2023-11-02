//
//  ScrollViewReaderBootcamp.swift
//  SwiftulThinkingBootcampIntermediate
//
//  Created by daya vijayan on 02/11/23.
//

import SwiftUI

struct ScrollViewReaderBootcamp: View {
    @State var scrollToIndex : Int = 0
    @State var textFieldtext : String = ""
    var body: some View {
        VStack {
            TextField("enter a # here", text:$textFieldtext)
                .frame(height:55)
                .border(Color.gray)
                .padding(.horizontal)
                .keyboardType(.numberPad)
            ScrollView{
                ScrollViewReader{ proxy in
                    Button("SCROLL NOW"){
                        withAnimation(.spring()){
                            if let index = Int(textFieldtext){
                                scrollToIndex = index
                            }
                            //proxy.scrollTo(49,anchor:.centralAfricanRepublic)
                        }
                       
                    }
                    ForEach(0..<50){index in
                        Text("This is the item # \(index)")
                            .font(.headline)
                            .frame(height:200)
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                            .background(Color.white)
                            .cornerRadius(10)
                            .shadow(radius:10)
                            .padding()
                            .id(index)
                    }
                    .onChange(of:scrollToIndex, perform:{value in
                        withAnimation(.spring()){
                            proxy.scrollTo(value,anchor:.top)
                        }
                        
                    })
                }
            }
        }
    }
}

#Preview {
    ScrollViewReaderBootcamp()
}
