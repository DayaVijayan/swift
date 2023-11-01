//
//  InitializerBootcamp.swift
//  SwiftThinkingBootCamp
//
//  Created by daya vijayan on 26/10/23.
//

import SwiftUI

struct InitializerBootcamp: View {
    let backgroundcolor : Color
    let count :Int
    let title : String
    
    //what it really does is//
//    init(backgroundcolor: Color, count: Int, title: String) {
//        self.backgroundcolor = backgroundcolor
//        self.count = count
//        self.title = title
//    }
//    init( count: Int, title: String) {
//       
//        self.count = count
//        self.title = title
//        
//        if  title == "Apples"{
//            self.backgroundcolor = Color.red
//        }else {
//            self.backgroundcolor = Color.orange
//        }
//    }
    init( count: Int, fruit: Fruit) {
        
        self.count = count
        if fruit == .apple{
            self.title = "Apples"
            self.backgroundcolor = .red
        }else{
            self.title = "Oranges"
            self.backgroundcolor = .orange
        }
    }
    
    enum Fruit{
        case apple
        case orange
    }
    var body: some View {
        VStack(spacing:10){
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            Text(title)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
                
        }
        .frame(width:160,height:160)
        
            .background(backgroundcolor)
            .cornerRadius(10)
            
    }
}

#Preview {
//    InitializerBootcamp(backgroundcolor: .purple, count: 55, title: "Apples")
//    InitializerBootcamp( count: 55, title: "Apples")
    HStack {
        InitializerBootcamp(count: 55, fruit: .orange)
        InitializerBootcamp(count: 55, fruit: .apple)
            
    }
}
