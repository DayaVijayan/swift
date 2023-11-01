//
//  TabViewBootcamp.swift
//  SwiftThinkingBootCamp
//
//  Created by daya vijayan on 31/10/23.
//

import SwiftUI

struct TabViewBootcamp: View {
    @State var selectedTab : Int = 2
    let icons: [String] = [
        "heart.fill","globe","house.fill","person.fill"
    ]
    var body: some View {
        
        TabView{
            TabView{
                ForEach(icons, id:\.self){icon in
                    Image(systemName: icon)
                        .resizable()
                        .scaledToFit()
                }
            }.background(RadialGradient(gradient: Gradient(colors: [Color.red,Color.orange]), center: .center, startRadius: 5, endRadius: 300))
//            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
//                .foregroundColor(.red)
//            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
//            RoundedRectangle(cornerRadius: 25.0)
//                .foregroundColor(.green)
                
        }.frame(height:300)
        .tabViewStyle(PageTabViewStyle())
//        TabView(selection : $selectedTab){
//            HomeView(selectedTab: $selectedTab)
//                .tabItem {
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                }.tag(0)
//            Text("BROWSE TAB")
//                .tabItem {
//                    Image(systemName: "globe")
//                    Text("Browse")
//                }.tag(1)
//            Text("PROFILE TAB")
//                .tabItem {
//                    Image(systemName: "person.fill")
//                    Text("Profile")
//                }.tag(2)
//        }.accentColor(.red)
    }
}

#Preview {
    TabViewBootcamp()
}

struct HomeView: View {
    @Binding var selectedTab : Int
    var body: some View {
        ZStack{
            Color.red
            Text("HomeTab")
                .font(.largeTitle)
                .foregroundColor(.white)
            Button(action: {
                selectedTab = 2
            }, label: {
                Text("Go To Profile")
                    .font(.headline)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.white)
                    .cornerRadius(10)
            })
        }
        
    }
}
//if you use selection also use tag s that you can indicate yoir selection.
