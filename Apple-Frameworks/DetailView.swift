//
//  DetailView.swift
//  Apple-Frameworks
//
//  Created by daya vijayan on 08/11/23.
//

import SwiftUI

struct DetailView: View {
    var framework : Framework
    @Binding var isShowingDetailView : Bool
    @State private var isShowingSafariView = false
    var body: some View {
        VStack{
           
            Spacer()
            FrameworkTitleView(framework: framework)
           
            Text(framework.description)
                .font(.body)
               
            
            Spacer()
            
            Button{
               isShowingSafariView = true
            }label:{
                AFButton(title: "Learn")
                    
            }.fullScreenCover(isPresented: $isShowingSafariView, content: {
                SafariView(url : URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
            })
           
           
                
        }
    }
}

#Preview {
    DetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
}
