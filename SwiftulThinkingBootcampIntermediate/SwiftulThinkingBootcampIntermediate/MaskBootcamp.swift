//
//  MaskBootcamp.swift
//  SwiftulThinkingBootcampIntermediate
//
//  Created by daya vijayan on 02/11/23.
//

import SwiftUI

struct MaskBootcamp: View {
    @State var rating : Int = 2
    var body: some View {
        ZStack{
            starsView
                .overlay(
                    
                    overlayView.mask(starsView)
                )
               
        }
    }
    private var overlayView: some View{
        GeometryReader{ geometry in
            ZStack(alignment:.leading){
                Rectangle()
                    .fill(LinearGradient(gradient:Gradient(colors:[Color.red,Color.blue]),startPoint: .leading,endPoint: .trailing))
                    .foregroundColor(.yellow)
                    .frame(width:CGFloat(rating)/5 * geometry.size.width)
            }
        }.allowsHitTesting(false)
    }
    private var starsView: some View{
        HStack{
            ForEach(1..<6){ index in
                Image(systemName: "star.fill")
                    .font(.title)
                    .foregroundColor(rating >= index ? Color.yellow : Color.gray)
                    .onTapGesture {
                        withAnimation(.easeInOut) {
                             rating = index
                        }
                        }
                       
            }
            }
    }
}

#Preview {
    MaskBootcamp()
}
