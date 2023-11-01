//
//  IfLetGuardBootcamp.swift
//  SwiftThinkingBootCamp
//
//  Created by daya vijayan on 31/10/23.
//

import SwiftUI

struct IfLetGuardBootcamp: View {
//    @State var displayText : String = ""
    @State var currentIUserId: String? = "asada"
    @State var displayText : String? = nil
    @State var isLoading : Bool = false
    var body: some View {
        NavigationView{
            VStack{
                Text("here we are practicing safe coding")
//                Text(displayText)
                if let text = displayText{
                    Text(text)
                        .font(.title)
                }
                if isLoading {
                    ProgressView()
                }
                   
                Spacer()
            }.navigationTitle("Safe Coding")
                .onAppear(){
                    loadData()
                }
        }
            }
    func loadData(){
        if let userID = currentIUserId{
            isLoading = true
                  DispatchQueue.main.asyncAfter(deadline: .now() + 3){
                        displayText = "This is the new data!"
                        isLoading = false
                   }
        }else{
            displayText = "Error there is no user id"
        }
        
        
        
        
        
//        isLoading = true
//        DispatchQueue.main.asyncAfter(deadline: .now() + 3){
//            displayText = "This is the new data!"
//            isLoading = false
//        }
    }
    func loadData2(){
        guard let userId = currentIUserId else{
            //code for no user id
            //there must be a return
            displayText = "Error there is no user id"
            return
            //means get out of the function.
        }
        isLoading = true
              DispatchQueue.main.asyncAfter(deadline: .now() + 3){
                    displayText = "This is the new data!"
                    isLoading = false
               }
    }
}

#Preview {
    IfLetGuardBootcamp()
}
