//
//  ShapesBootCamp.swift
//  SwiftThinkingBootCamp
//
//  Created by daya vijayan on 25/10/23.
//

import SwiftUI

struct ShapesBootCamp: View {
    var body: some View {
//        Circle()
//            .fill(Color.pink)
//            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
//            .stroke()
//            .stroke(Color.red)
//            ./*stroke(Color.blue, lineWidth: 30)*/
//            .stroke(Color.orange,style:StrokeStyle(lineWidth: 20,lineCap: .round,dash: [30]))
//            .trim(from:0.2,to:1.0)
//            .stroke(Color.purple,lineWidth: 50)
        
//        Ellipse()
//    .trim(from:0.2, to:2.0)
//            .frame(width:200, height:100)
//        Capsule(style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)//.circular can be a different option
//            .frame(width:200, height:100)
//        Rectangle()
//            .frame(width:200, height:100)
        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            .trim(from:0.4, to:1.0)
            .frame(width:200, height:100)
            
    }
}

#Preview {
    ShapesBootCamp()
}
