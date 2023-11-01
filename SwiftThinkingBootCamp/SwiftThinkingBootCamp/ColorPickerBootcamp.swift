//
//  ColorPickerBootcamp.swift
//  SwiftThinkingBootCamp
//
//  Created by daya vijayan on 30/10/23.
//

import SwiftUI

struct ColorPickerBootcamp: View {
    @State var backgroundColor : Color = .green
    var body: some View {
        ZStack{
            backgroundColor
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            ColorPicker("select a color",
                        selection: $backgroundColor,
            supportsOpacity: true)
            .background(Color.black)
            .foregroundColor(.white)
            .font(.headline)
            .padding(50)
        }
    }
}

#Preview {
    ColorPickerBootcamp()
}
