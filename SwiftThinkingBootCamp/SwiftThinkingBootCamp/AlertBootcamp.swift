//
//  AlertBootcamp.swift
//  SwiftThinkingBootCamp
//
//  Created by daya vijayan on 27/10/23.
//

import SwiftUI

struct AlertBootcamp: View {
    @State var showAlert : Bool = false
    @State var backgroundColor : Color = Color.yellow
    @State var alertType : MyAlerts? = nil
//    @State var alertMessage :String = " "
//    @State var alertTitle : String = " "
    enum MyAlerts{
        case success
        case error
    }
    var body: some View {
        ZStack{
            backgroundColor.ignoresSafeArea()
            VStack{
                Button("Click here1"){
                    alertType = .error
//                    alertTitle = "error1"
//                    alertMessage = "A"
                    showAlert.toggle()
                }
                Button("Click here 2"){
                    alertType = .success
//                    alertTitle = "Success"
//                    alertMessage = "B"
                    showAlert.toggle()
                }
            }
        .alert(isPresented: $showAlert, content: {
            getAlert()
//            Alert(title: Text("error"), message: Text("rectify"), primaryButton: .destructive(Text("DELETE"),action:{
//                backgroundColor = Color.red
//            } ) ,secondaryButton: .cancel())
            //            Alert(title: Text("error"))
            
        })
    }   
}
    func getAlert() -> Alert{
        switch alertType {
        case .success:
            return Alert(title:Text("success"))
        case .error:
            return Alert (title: Text("error"),message: nil,dismissButton: .default(Text("Ok"),action: {
                backgroundColor = Color.green
            }))
        case nil:
            return Alert(title:Text("ERROR") )
        }
        
        
//        return Alert(
//            title: Text(alertTitle),
//            message:Text(alertMessage),
//            dismissButton:.default(Text("OOk")))
//        return Alert(title: Text("error"), message: Text("rectify"), primaryButton: .destructive(Text("DELETE"),action:{
//            backgroundColor = Color.red
//        } ) ,secondaryButton: .cancel())
    }
}

#Preview {
    AlertBootcamp()
}
