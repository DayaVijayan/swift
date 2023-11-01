//
//  ActionSheetBootcamp.swift
//  SwiftThinkingBootCamp
//
//  Created by daya vijayan on 30/10/23.
//

import SwiftUI

struct ActionSheetBootcamp: View {
    @State var showActionSheet : Bool = false
    @State var actionSheetOption : ActionSheetOptions = .isOtherPost
    enum ActionSheetOptions{
        case isMyPost
        case isOtherPost
    }
    var body: some View {
//        Button("Click me!"){
//            showActionSheet.toggle()
//        }
        VStack {
            HStack{
                Circle()
                    .frame(width:30,height:30)
                Text("@username")
                Spacer()
                Button(action: {
                    actionSheetOption = .isMyPost
                    showActionSheet.toggle()
                }, label: {
                    Image(systemName: "ellipsis")
                })
                .accentColor(.primary)
            }
            .padding(.horizontal)
            Rectangle()
                .aspectRatio(1.0,contentMode: .fit)
            
        }.actionSheet(isPresented: $showActionSheet, content: {
            getActionSheet()
    })
    }
    
    func getActionSheet() -> ActionSheet{
        //return ActionSheet(title: Text("this is the title!"))
        
        let shareButton :ActionSheet.Button = .default(Text("Share")){
            
        }
        
        let reportButton : ActionSheet.Button = .destructive(Text("Report")){
            
        }
        let deleteButton: ActionSheet.Button = .destructive(Text("Delete")){
            
        }
        let cancelButton : ActionSheet.Button = .cancel()
        let title = Text("what would you like to do?")
        switch actionSheetOption {
        case .isOtherPost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [shareButton,reportButton,cancelButton])
        case .isMyPost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [shareButton,reportButton,deleteButton,cancelButton])
        }
        
        
        
        
//        let button1 : ActionSheet.Button = .default(Text("Default"))
//        let button2 : ActionSheet.Button = .destructive(Text("Destructive"))
//        let button3 : ActionSheet.Button = .cancel()
//        return ActionSheet(
//            title: Text("this is the title !"),
//            message: Text("this is the message"),
//            buttons:[button1,button1,button2,button3])
    }
}

#Preview {
    ActionSheetBootcamp()
}
