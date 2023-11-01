//
//  ToggleBootcamp.swift
//  SwiftThinkingBootCamp
//
//  Created by daya vijayan on 30/10/23.
//

import SwiftUI

struct ToggleBootcamp: View {
    @State var toggleIsOn: Bool = false
    var body: some View {
        VStack {
            HStack{
            Text("Status")
                Text(toggleIsOn ? "Online" : "Offline")
            }.font(.title)
        }
        Toggle(isOn: $toggleIsOn,
               label: {
            /*@START_MENU_TOKEN@*/Text("Label")/*@END_MENU_TOKEN@*/
        })
        .toggleStyle(SwitchToggleStyle(tint: .red))
        Spacer()
    }
       
        
       
}

#Preview {
    ToggleBootcamp()
}
