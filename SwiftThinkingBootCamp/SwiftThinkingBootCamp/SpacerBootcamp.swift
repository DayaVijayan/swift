//
//  SpacerBootcamp.swift
//  SwiftThinkingBootCamp
//
//  Created by daya vijayan on 25/10/23.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        
        VStack {
            HStack{
                Image(systemName: "xmark")
                Spacer() //pushes the item apart
                Image(systemName: "gear")
            }.font(.title)
                .padding(.horizontal) //creates the horizontal margin
            Spacer()
// pushes it all way above
        }
            
//        HStack(spacing:0){
//        Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
//            .frame(height: 10)
//            .background(Color.orange)
//            Rectangle()
//                .frame(width:100,height: 100)
//            Spacer()
//                .frame(height: 10)
//                .background(Color.orange)
//            Rectangle()
//                .fill(.red)
//                .frame(width:100,height: 100)
//            Spacer()
//                .frame(height: 10)
//                .background(Color.orange)
//        Rectangle()
//            .fill(.green)
//            .frame(width:100,height: 100)
//        Spacer()
//            .frame(height: 10)
//            .background(Color.orange)
//        }.background(Color.yellow)
//            .padding(.horizontal,20)
//        .background(Color.blue)
    }
}

#Preview {
    SpacerBootcamp()
}
