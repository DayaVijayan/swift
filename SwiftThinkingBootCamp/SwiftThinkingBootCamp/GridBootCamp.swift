//
//  GridBootCamp.swift
//  SwiftThinkingBootCamp
//
//  Created by daya vijayan on 26/10/23.
//

import SwiftUI

struct GridBootCamp: View {
    let columns: [GridItem] = [
//        GridItem(.fixed(50),spacing: nil,alignment: nil),
//        GridItem(.fixed(50),spacing: nil,alignment: nil),
//        GridItem(.fixed(100),spacing: nil,alignment: nil),
//        GridItem(.fixed(50),spacing: nil,alignment: nil),
//        GridItem(.fixed(50),spacing: nil,alignment: nil)
        
//        GridItem(.flexible(),spacing:nil,alignment:nil),
//        GridItem(.flexible(),spacing:nil,alignment:nil),
//        GridItem(.flexible(),spacing:nil,alignment:nil),
//        GridItem(.flexible(),spacing:nil,alignment:nil),
//        GridItem(.flexible(),spacing:nil,alignment:nil)
//    
//        GridItem(.adaptive(minimum: 10, maximum: 300),spacing:nil,alignment: nil),
//        GridItem(.adaptive(minimum: 100, maximum: 300),spacing:nil,alignment: nil)
        
        GridItem(.flexible(),spacing:nil,alignment: nil),
        GridItem(.flexible(),spacing:nil,alignment: nil),
        GridItem(.flexible(),spacing:nil,alignment: nil)
        
        
    ]
    var body: some View {
        ScrollView{
            Rectangle()
                .fill(Color.white)
                .frame(height:400)
            LazyVGrid(columns:columns){
                ForEach(0..<50){ index in
                    Rectangle()
                        .frame(height: 100)
                }
                
                
            }}
    }
}

#Preview {
    GridBootCamp()
}
