//
//  FrameBootCamp.swift
//  SwiftThinkingBootCamp
//
//  Created by daya vijayan on 25/10/23.
//

import SwiftUI

struct FrameBootCamp: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .background(Color.green)
////            .frame(width:300, height:300,alignment:.center)
//            .frame(maxWidth:.infinity,maxHeight:.infinity,alignment: .top)
//            .background(Color.red)
        Text("hello")
            .frame(width:100,height:30)
            .background(Color.red)
            .frame(height:150)
            .background(Color.orange)
            .frame(width:200)
            .background(Color.purple)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.pink)
            .frame(height:500)
            .background(Color.green)
            .frame(height:700)
            .background(Color.yellow)
    }
}

#Preview {
    FrameBootCamp()
}
