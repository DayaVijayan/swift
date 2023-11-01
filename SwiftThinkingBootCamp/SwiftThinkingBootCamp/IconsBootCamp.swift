//
//  IconsBootCamp.swift
//  SwiftThinkingBootCamp
//
//  Created by daya vijayan on 25/10/23.
//

import SwiftUI

struct IconsBootCamp: View {
    var body: some View {
//        Image(systemName: "heart.fill")
//        //sf symbols//
////            .font(.caption)
//            .resizable()
////            .aspectRatio(contentMode: .fit)
////            .scaledToFill()
//            .scaledToFill()
////            .foregroundColor(.red)
//           .frame(width:300,height:300)
//           .clipped()//used with scaled to fill
        Image(systemName: "person.fill.badge.plus")
            .renderingMode(.original)
            .font(.largeTitle)
    }
}

#Preview {
    IconsBootCamp()
}
