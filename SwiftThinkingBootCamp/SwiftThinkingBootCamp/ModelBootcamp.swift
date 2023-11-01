//
//  ModelBootcamp.swift
//  SwiftThinkingBootCamp
//
//  Created by daya vijayan on 31/10/23.
//

import SwiftUI
struct UserModel:Identifiable{
    let id: String = UUID().uuidString
    let displayName : String
    let userName : String
    let followerCount : Int
    let isVerified : Bool
}
struct ModelBootcamp: View {
    @State var users: [UserModel]=[
        UserModel(displayName: "Nick", userName: "Nick123", followerCount: 100, isVerified: true),
        UserModel(displayName: "Emily", userName: "emily1995", followerCount: 60_, isVerified: false),
        UserModel(displayName: "Samantha", userName: "saamy", followerCount: 67, isVerified: true),
        UserModel(displayName: "Chris", userName: "Ninja33", followerCount: 300, isVerified: false)
                 
        
//        "Nick","Emily","Samantha","Chris"
    ]
    var body: some View {
        NavigationView{
            List{
                ForEach(users){user in
                    HStack(spacing : 15.0) {
                        Circle()
                            .frame(width:35, height:35)
                        VStack {
                            Text(user.displayName)
                            Text("@\(user.userName)")
                                .foregroundColor(.gray)
                                .font(.caption)
                           
                        }
                        Spacer()
                        if user.isVerified{
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        }
                        VStack{
                            Text("\(user.followerCount)")
                            Text("Followers")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                    }
                    .padding(.vertical,10)}
//                ForEach(users, id :\.self){name in
//                    
//                }
            }.listStyle(InsetListStyle())
            .navigationTitle("Users")
        }
    }
}

#Preview {
    ModelBootcamp()
}
