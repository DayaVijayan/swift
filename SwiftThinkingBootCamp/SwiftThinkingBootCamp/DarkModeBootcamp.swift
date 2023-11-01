//
//  DarkModeBootcamp.swift
//  SwiftThinkingBootCamp
//
//  Created by daya vijayan on 31/10/23.
//

import SwiftUI

struct DarkModeBootcamp: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        NavigationView{
            ScrollView{
                VStack(spacing:20){
                    Text("This text is PRIMary")
                        .foregroundColor(.primary)
                    Text("This text is Secondary")
                        .foregroundColor(.secondary)
                    Text("this color is black")
                        .foregroundColor(.black)
                    Text("this color is white")
                        .foregroundColor(.white)
                    Text("this Color is adaptive")
                        .foregroundColor(Color("AdaptiveColor"))
                    Text("locally adaptive")
                        .foregroundColor(colorScheme == .light ? .green : .yellow)
                }
            }.navigationTitle("Dark Mode Bootcamp")
        }
    }
}

#Preview {
    Group{
        DarkModeBootcamp()
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
        DarkModeBootcamp()
            .preferredColorScheme(.light)
    }
    
}
