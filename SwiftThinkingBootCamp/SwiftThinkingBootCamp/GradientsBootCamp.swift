//
//  GradientsBootCamp.swift
//  SwiftThinkingBootCamp
//
//  Created by daya vijayan on 25/10/23.
//

import SwiftUI

struct GradientsBootCamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            .fill(
//                Color(Color.red)
//                LinearGradient(
//                    gradient: Gradient(colors: [Color.mycolor, Color.blue,Color.orange]),
//                    startPoint: .top,
//                    endPoint: .bottom)
//                )
//                RadialGradient(
//                    gradient: Gradient(colors: [Color.red,Color.blue]),
//                    center: .topLeading,
//                    startRadius: 5,
//                    endRadius: 200)
                
                AngularGradient(gradient: /*@START_MENU_TOKEN@*/Gradient(colors: [Color.red, Color.blue])/*@END_MENU_TOKEN@*/, center: .topLeading, angle: .degrees(180 + 45))
                )
                
            .frame(width:300,height:200)
    }
}

#Preview {
    GradientsBootCamp()
}
