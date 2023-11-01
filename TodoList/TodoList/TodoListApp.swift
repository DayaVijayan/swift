//
//  TodoListApp.swift
//  TodoList
//
//  Created by daya vijayan on 01/11/23.
//

import SwiftUI

@main
struct TodoListApp: App {
    @StateObject var listViewModel : ListViewModel = ListViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()
            }
            .environmentObject(listViewModel)
          
        }
    }
}
