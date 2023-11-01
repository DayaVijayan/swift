//
//  ListBootcamp.swift
//  SwiftThinkingBootCamp
//
//  Created by daya vijayan on 27/10/23.
//

import SwiftUI

struct ListBootcamp: View {
    @State var fruits : [String] = ["apple","orange","banana","peach"]
    @State var veggies : [String] = ["potato","tomato","carrot"]
    var body: some View {
        NavigationView{
            List{
                Section(
                    header: 
                        HStack {
                            Text("fruits")
                            Image(systemName: "flame.fill")
                        }.font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.purple)
                ){
                        ForEach(fruits, id:\.self){fruit in
                            Text(fruit.capitalized)
                        }
                        //                .onDelete(perform: { indexSet in
                        //                    fruits.remove(atOffsets: <#T##IndexSet#>)
                        //                })
                        .onDelete(perform:delete)//no need for parameters as it knows that its the indexset that is passed ,check the definition//
                        //                    .onMove(perform: { indices, newOffset in
                        //                        fruits.move(fromOffsets: indices, toOffset: newOffset)
                        //                    })
                        .onMove(perform:move)
                        .listRowBackground(Color.pink)
                        
                    }
                Section(header: Text("Veggies")){
                    ForEach(veggies,id:\.self){veggie in
                        Text(veggie.capitalized)
                    }
                }
            }
            .accentColor(.purple)
//            .listStyle(GroupedListStyle())
//            .listStyle(InsetListStyle())
//            .listStyle(SidebarListStyle())
            .navigationTitle("Grocery List")
//            .navigationBarItems(
//                leading: EditButton(),
//                trailing: Button("Add",action: {
//                    fruits.append("Coconut")
//                })
//            )
            .navigationBarItems(
                leading: EditButton(),
                trailing:addButton
            )
            
        }.accentColor(.red)
    }
    var addButton : some View{
        Button("Add",action:{
            add()
        })
    }
    func delete(indexSet: IndexSet){ //delete(our: their)
        fruits.remove(atOffsets: indexSet)
    }
    func move(indices:IndexSet,newOffset: Int){
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    func add(){
        fruits.append("Coconut")
    }
}

#Preview {
    ListBootcamp()
}
