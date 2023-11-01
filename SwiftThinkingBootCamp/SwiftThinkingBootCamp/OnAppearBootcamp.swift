//
//  OnAppearBootcamp.swift
//  SwiftThinkingBootCamp
//
//  Created by daya vijayan on 31/10/23.
//

import SwiftUI

struct OnAppearBootcamp: View {
    @State var myText : String = "StartText"
    @State var count: Int = 0
    var body: some View {
        NavigationView{
            ScrollView{
                Text(myText)
                LazyVStack{
                    ForEach(0..<50){_ in
                        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                            .frame(height:200)
                            .padding()
                            .onAppear(){
                                count += 1
                            }
                    }
                }
            }.onAppear(perform:{
                DispatchQueue.main.asyncAfter(deadline:.now()+5)  {
                    myText = "This is the new text"
                }
            })
            .onDisappear(perform:{
                myText = "Ending Text"
            })
            .navigationTitle("On appear :\(count)")
        }
    }
}

#Preview {
    OnAppearBootcamp()
}
