//
//  ExtractSubviewsBootcamp.swift
//  SwiftThinkingBootCamp
//
//  Created by daya vijayan on 26/10/23.
//

import SwiftUI

struct ExtractSubviewsBootcamp: View {
    var body: some View {
        ZStack{
            Color.blue.ignoresSafeArea()
           
            contentLayer
        }
    }
    var contentLayer : some View{
        HStack {
            MyItem(title: "Apples", count: 3, color: .red)
            MyItem(title: "Oranges", count: 4, color: .orange)
            MyItem(title: "BAnanas", count: 3, color: .yellow)
        }
    }
}

#Preview {
    ExtractSubviewsBootcamp()
}

struct MyItem: View {
    var title :String
    var count : Int
    var color : Color
    
    init(title: String, count: Int, color: Color) {
        self.title = title
        self.count = count
        self.color = color
    }
    
    var body: some View {
        VStack{
            Text("\(count)")
            Text(title)
        }.padding()
            .background(color)
            .cornerRadius(29)
    }
}
