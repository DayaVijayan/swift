//
//  RotationGestureBootcamp.swift
//  SwiftulThinkingBootcampIntermediate
//
//  Created by daya vijayan on 02/11/23.
//

import SwiftUI

struct RotationGestureBootcamp: View {
    @State var angle : Angle = Angle(degrees: 0)
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .font(.largeTitle)
            .fontWeight(.semibold)
            .foregroundColor(.white)
            .padding(50)
            .background(Color.blue.cornerRadius(10))
            .rotationEffect(angle)
            .gesture(
                RotationGesture()
                    .onChanged{ value in
                        angle = value
                    }
                    .onChanged{ value in
                        withAnimation(.spring()){
                            angle = Angle(degrees: 0)
                        }
                        }
                        
            )
    }
}

#Preview {
    RotationGestureBootcamp()
}
