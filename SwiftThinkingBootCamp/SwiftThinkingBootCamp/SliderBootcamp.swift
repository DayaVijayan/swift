//
//  SliderBootcamp.swift
//  SwiftThinkingBootCamp
//
//  Created by daya vijayan on 31/10/23.
//

import SwiftUI

struct SliderBootcamp: View {
    @State var sliderVAlue : Double = 10
    var body: some View {
        VStack {
            Text("Rating:")
            Text(String(format: "%.0f",sliderVAlue)
                //"\(sliderVAlue)")
                )
            //Slider(value: $sliderVAlue )
            //Slider(value: $sliderVAlue, in: 0...100)
            Slider(value: $sliderVAlue, in: 1...5,step:1.0)
         
            
                .accentColor(.red)
        }
    }
}

#Preview {
    SliderBootcamp()
}
