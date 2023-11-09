//
//  FrameworkTitleView.swift
//  Apple-Frameworks
//
//  Created by daya vijayan on 09/11/23.
//

import SwiftUI

struct FrameworkTitleView: View{
    let framework : Framework
//    let name: String
//    let imageName : String
    var body : some View{
        HStack{
            Image(framework.imageName)
                .resizable()
                .frame(width:70,height:70)
            Text(framework.name)
                .font(.title2)
                .bold()
                .padding()
        }
    }
}
