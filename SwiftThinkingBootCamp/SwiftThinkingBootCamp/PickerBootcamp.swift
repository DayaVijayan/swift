//
//  PickerBootcamp.swift
//  SwiftThinkingBootCamp
//
//  Created by daya vijayan on 30/10/23.
//

import SwiftUI

struct PickerBootcamp: View {
    @State var selection : String = "Most Recent"
    let filterOptions : [String] = ["Most Recent","Most Popular","Most Liked"]
    var body: some View {
        
        Picker(
            selection: $selection,
            label:Text("Picker"),
            content:{
                ForEach(filterOptions.indices){index in
                    Text(filterOptions[index]).tag(filterOptions[index])
                }
            }).pickerStyle(SegmentedPickerStyle())
            .background(Color.red)
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
//        Picker(
//        selection: $selection,
//        label:
//            HStack{
//                Text("Filter")
//            Text(selection)
//            }
//            .font(.headline)
//            .foregroundColor(.white)
//            .padding()
//            .padding(.horizontal)
//            .background(Color.blue)
//            .cornerRadius(10)
//           
//       , content:{
//           ForEach(filterOptions, id:\.self ){option in
//               HStack {
//                   Text(option)
//                    Image(systemName: "heart.fill")
//               }  .tag(option)
//           }
//           
//        }).pickerStyle(MenuPickerStyle())
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
//        VStack{
//            HStack{
//                Text("age:")
//                Text(selection)
//            }.font(.headline)
//            Picker(selection:$selection,
//                   label:Text("Picker"),
//                   content:{
//                ForEach(18..<100){number in
//                    Text("\(number)").tag("\(number)")}
////                Text("1").tag("1")
////                Text("2").tag("2")
////                Text("3").tag("3")
////                Text("4").tag("4")
////                Text("5").tag("5")
//            }).pickerStyle(WheelPickerStyle())        }
       
    }


#Preview {
    PickerBootcamp()
}
