//
//  ContextMenuBootCamp.swift
//  SwiftThinkingBootCamp
//
//  Created by daya vijayan on 30/10/23.
//

import SwiftUI

struct ContextMenuBootCamp: View {
    @State var backgroundcolor : Color = .blue
    var body: some View {
        VStack{
            Image(systemName: "house.fill")
            .font(.title)
            Text("swiftful thinking")
                .font(.headline)
            Text("How To Use Context View")
                .font(.subheadline)
                
        }.foregroundColor(.white)
        .padding(30)
        .background(backgroundcolor.cornerRadius(30))
        .contextMenu(menuItems: {
            Button(action: {
                backgroundcolor = .yellow
            }, label: {
                Label("Share Post", systemImage: "flame.fill")
            })
            Button(action: {
                backgroundcolor = .red
            }, label: {
                Text("Report Post")
            })
            Button(action: {
                backgroundcolor = .green
            }, label: {
                HStack{
                    Text("Like Post")
                    Image(systemName: "heart.fill")
                }
            })
        })
    }
}

#Preview {
    ContextMenuBootCamp()
}
