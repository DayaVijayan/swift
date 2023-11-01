//
//  ListView.swift
//  TodoList
//
//  Created by daya vijayan on 01/11/23.
//

import SwiftUI

struct ListView: View {
    @EnvironmentObject var listViewModel: ListViewModel
    var body: some View {
        List{
            //since it is already conformed to identifiable which gives each of them an id , we need no put id:\.self in foreach,.//
            ForEach(listViewModel.items){item in
                ListRowView(item: item)
                    .onTapGesture {
                        withAnimation(.linear){
                            listViewModel.updateItem(item: item)
                        }
                    }
            }.onDelete(perform:listViewModel.deleteItem)
                .onMove(perform:listViewModel.moveItem)
                
                    
            
        }.listStyle(PlainListStyle())
        .navigationTitle("To-Do List")
            .navigationBarItems(
                leading: EditButton(),
                trailing:
                    NavigationLink("Add",destination: AddView())
            )
    }
   
}

#Preview {
    NavigationView{
        ListView()
    }.environmentObject(ListViewModel())
  
}

