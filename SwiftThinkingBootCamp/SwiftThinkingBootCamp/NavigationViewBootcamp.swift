//
//  NavigationViewBootcamp.swift
//  SwiftThinkingBootCamp
//
//  Created by daya vijayan on 27/10/23.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView{
            ScrollView{
                NavigationLink("helloworld1",destination: MyOtherScreen())
                Text("helloworld1")
                Text("helloworld2")
                Text("helloworld3")
            }
            .navigationTitle("All Inboxes")
            .navigationBarTitleDisplayMode(/*@START_MENU_TOKEN@*/.automatic/*@END_MENU_TOKEN@*/)
            //.navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(
                leading: HStack {
                    Image(systemName: "person.fill")
                    Image(systemName: "flame.fill")
                },
                trailing: NavigationLink(destination: MyOtherScreen(), label: {
                    Image(systemName: "gear")
                })
                .accentColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            )
        }
    }
}
struct MyOtherScreen : View{
    @Environment (\.presentationMode) var presentationMode
    var body: some View{
        ZStack{
            Color.green
                .ignoresSafeArea()
                .navigationTitle("Green Screen")
                .navigationBarHidden(true)
            
            VStack{
                Button("Back Button"){
                    presentationMode.wrappedValue.dismiss()
                }
                NavigationLink("Click here" , destination: Text("3rd screen!"))
            }
        }
    }
}

#Preview {
    NavigationViewBootcamp()
}
