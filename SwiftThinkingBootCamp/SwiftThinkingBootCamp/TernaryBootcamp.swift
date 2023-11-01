//
//  TernaryBootcamp.swift
//  SwiftThinkingBootCamp
//
//  Created by daya vijayan on 27/10/23.
//

import SwiftUI

struct TernaryBootcamp: View {
    @State var isStartingSate : Bool = false
    var body: some View {
        VStack{
            Button("Press me \(isStartingSate.description)"){
                isStartingSate.toggle()
            }
            Text(isStartingSate ? "yes" : "no")
            RoundedRectangle(cornerRadius: isStartingSate ? 25: 10)
                .fill(isStartingSate ? Color.red : Color.blue)
                .frame(
                    width:isStartingSate  ? 200: 50,
                    height:isStartingSate ? 400: 50)
            Spacer()
        }
    }}

#Preview {
    TernaryBootcamp()
}
