//
//  TextBootCamp.swift
//  SwiftThinkingBootCamp
//
//  Created by daya vijayan on 25/10/23.
//

import SwiftUI

struct TextBootCamp: View {
    var body: some View {
        Text("Hello, World!khsdkjhjsdbmasfhjsahdasdasdasdasdasdadadasdadasdadad".lowercased())
        //.capitalize()
        //.upercased()
//            .font(.body)
////            .fontWeight(.medium)
//            .bold()
////            .underline()
//            .underline(true, color: Color.red)
//            .italic()
//            .strikethrough(true, color: Color.green)
//            .foregroundColor(Color.blue)
        
//            .font(.system(size:24,weight:.semibold,design: .serif))
//            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)// towards the left
//            .baselineOffset(-80)
            .kerning(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)//between each letters
            .multilineTextAlignment(.trailing)// towards the right(
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)//color of the font
            .frame(width:200, height: 100, alignment: .center)//imaginary box , the alignment can be center, leading or trailing
            .minimumScaleFactor(0.9) //scaledwith respect to the frame
    }
}

#Preview {
    TextBootCamp()
}
