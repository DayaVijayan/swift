//
//  ForEachBootCamp.swift
//  SwiftThinkingBootCamp
//
//  Created by daya vijayan on 26/10/23.
//

import SwiftUI

struct ForEachBootCamp: View {
    let data : [String] = ["Daya","Sneha","Kshama"]
    var body: some View {
        //        ForEach(0..<9){index in
        ////            Text("hi:\(index)")
        //            HStack{
        //                Circle()
        //                    .frame(width:30,height:30)
        //                Text("hi:\(index)")
        //            }
        //        }
        VStack{
            ForEach (data.indices){ index in
                Text("\(data[index]): \(index)")
            }
        }.frame(width:100,height: 100,alignment: .leading)
            
    }
}

#Preview {
    ForEachBootCamp()
}
