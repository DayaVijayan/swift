//
//  MultipleSheetsBootcamp.swift
//  SwiftulThinkingBootcampIntermediate
//
//  Created by daya vijayan on 02/11/23.
//

import SwiftUI

struct RandomModel : Identifiable{
    let id = UUID().uuidString
    let title: String
}
// binding
//use multiple sheets
//use item
struct MultipleSheetsBootcamp: View {
    @State var selectedModel : RandomModel? = nil
    //@State var showSheet: Bool = false
    //@State var showSheet2 : Bool = false
    var body: some View {
        VStack(spacing:20){
            
            
            ForEach(0..<50){index in
                Button("Button\(index)"){
                    
                    selectedModel = RandomModel (title:"\(index)")
                    
                }
            }}.sheet(item:$selectedModel){model in
                NextScreen(selectedModel: model)
            }
                /*showSheet.toggle()*/}
            //            }.sheet(isPresented: $showSheet, content: {
            //                NextScreen(selectedModel: RandomModel(title: "ONE"))
            //            })
            
                /*showSheet2.toggle()*/}
            //            }.sheet(isPresented: $showSheet2, content: {
            //                NextScreen(selectedModel: RandomModel(title: "TWO"))
            //            })
        
//        }.sheet(isPresented: $showSheet, content: {
//            NextScreen(selectedModel: selectedModel)
//            if selectedIndex == 1{
//                NextScreen(selectedModel: RandomModel(title: "ONE"))
//            }else if selectedIndex == 2{
//                NextScreen(selectedModel: RandomModel(title: "TWO"))
//            }else{
//                NextScreen(selectedModel: RandomModel(title: "STARTING TITLE"))
////            }
//        })
    


struct NextScreen : View{
     let selectedModel : RandomModel
    var body: some View{
        Text(selectedModel.title)
            .font(.largeTitle)
    }
}








#Preview {
    MultipleSheetsBootcamp()
}
