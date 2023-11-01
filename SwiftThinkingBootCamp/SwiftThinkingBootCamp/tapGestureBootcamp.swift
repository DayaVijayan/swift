//
//  tapGestureBootcamp.swift
//  SwiftThinkingBootCamp
//
//  Created by daya vijayan on 31/10/23.
//

import SwiftUI

struct tapGestureBootcamp: View {
    @State var isSelected : Bool = false
    var body: some View {
        VStack(spacing:20){
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .frame(height:200)
                .foregroundColor(isSelected ? .green : .red)
            Button(action: {
                isSelected.toggle()
            }, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height:55)
                    .frame(maxWidth:.infinity)
                    .background(Color.blue)
                    .cornerRadius(25)
            })
            Text("TAP GESTURE")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height:55)
                .frame(maxWidth:.infinity)
                .background(Color.blue)
                .cornerRadius(25)
                //.onTapGesture {
                   // isSelected.toggle()
              //  }
                .onTapGesture(count: 2, perform: {
                    isSelected.toggle()
                })
            Spacer()
        }
        .padding(40)
    }
}

#Preview {
    tapGestureBootcamp()
}
