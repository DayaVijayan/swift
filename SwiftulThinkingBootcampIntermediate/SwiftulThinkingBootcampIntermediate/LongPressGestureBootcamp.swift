//
//  LongPressGestureBootcamp.swift
//  SwiftulThinkingBootcampIntermediate
//
//  Created by daya vijayan on 02/11/23.
//

import SwiftUI

struct LongPressGestureBootcamp: View {
    @State var isComplete : Bool = false
    @State var isSuccess : Bool = false
    var body: some View {
       
//        Text(isComplete ? "Completed" : "not completed")
//            .padding()
//            .padding(.horizontal)
//            .background(isComplete ? Color.green : Color.gray)
//            .cornerRadius(10)
////            .onTapGesture {
////            isComplete.toggle()
////        }
//            .onLongPressGesture(minimumDuration: 1,maximumDistance: 50) {
//                isComplete.toggle()
//            }
        VStack{
            Rectangle()
                .fill(isSuccess ? Color.green : Color.blue)
                .frame(maxWidth: isComplete ? .infinity: 0)
                .frame(height:55)
                .frame(maxWidth:.infinity, alignment: .leading)
                .background(Color.gray)
            HStack{
                Text("CLICK HERE")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
                    .onLongPressGesture(minimumDuration:1.0,maximumDistance: 50) {(isPressing) in
                        if isPressing{
                            withAnimation(.easeInOut(duration:1.0)){
                                isComplete = true
                            }}
                            else {
                                DispatchQueue.main.asyncAfter(deadline: .now()+0.1){
                                    if !isSuccess{
                                        withAnimation(.easeInOut){
                                            isComplete = false
                                        }
                                    }
                                }
                            }
                                
                            
                        
                    }perform:{
                        withAnimation(.easeInOut){
                            isSuccess = true
                        }
                    }
                
                Text("RESET")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
                    .onTapGesture {
                        isComplete = false
                        isSuccess = true
                    }
            }
            
        }
    }
}

#Preview {
    LongPressGestureBootcamp()
}
