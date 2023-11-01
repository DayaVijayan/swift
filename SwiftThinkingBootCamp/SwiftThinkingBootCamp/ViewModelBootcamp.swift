//
//  ViewModelBootcamp.swift
//  SwiftThinkingBootCamp
//
//  Created by daya vijayan on 31/10/23.
//

import SwiftUI
struct FruitModel:Identifiable{
    let id :String = UUID().uuidString
    let name: String
    let count: Int
}
class FruitViewModel:ObservableObject{
    //inside the class, its for the data and not the view
    //@Published is same as @State but for inside the class ---> hey something changed just update the change...
   @Published var fruitArray: [FruitModel] = []
    @Published var isLoading : Bool = false
    
    init(){
        getFruits()
    }
    func getFruits(){
        let fruit1 = FruitModel(name: "Orange", count: 1)
        let fruit2 = FruitModel(name: "BAnana", count: 2)
        let fruit3 = FruitModel(name: "watermelons", count: 88)
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now()){
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
        }
        
        
       
      
       
    }
    func deleteFruit(index:IndexSet){
        fruitArray.remove(atOffsets: index)
    }
}
struct ViewModelBootcamp: View {
   // @State var fruitArray : [FruitModel] = [
//        FruitModel(name: "Apples", count: 6)
//    ]
    //observed object is just like a state and its used to catch up the updates but used for an object derived inside a class
    
//*****@ObservedObject var fruitViewModel: FruitViewModel = FruitViewModel()
    //observed object would also reload whenever refreshed , we dont want that to happen and we want the data to perist .
    //hence @stateobject
    //STATEOBJECT ---- USE THIS ON CREATION /INIT
    // OBSERVED OBJECT ----- USE THIS ON SUB OBJECT (WHILE PASSING)
    @StateObject var fruitViewModel : FruitViewModel = FruitViewModel()
    var body: some View {
        NavigationView{
            List{
                if fruitViewModel.isLoading{
                    ProgressView()
                }else{
                    ForEach(fruitViewModel.fruitArray){ fruit in
                        HStack{
                            Text("\(fruit.count)")
                                .foregroundColor(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }.onDelete(perform: fruitViewModel.deleteFruit)
                }
              
            }.listStyle(GroupedListStyle())
                .navigationTitle("Fruit List")
                .navigationBarItems(trailing:
                                        NavigationLink(
                                            destination:RandomScreen(fruitViewModel: fruitViewModel),
                                            label: {
                                                Image(systemName: "arrow.right")
                                                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                            })
                                        )
      
//                .onAppear{
//                    fruitViewModel.getFruits()
//                }
        }
        
    
    }
    //this code has nothing to do with the view , its only for the data---> so put it inside a class
    
}
struct RandomScreen: View{
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var fruitViewModel : FruitViewModel
    //we have the data of the FruitViewModel in random screen
    var body: some View{
        ZStack{
            Color.green.ignoresSafeArea()
            VStack{
                ForEach(fruitViewModel.fruitArray){fruit in
                    Text(fruit.name)
                        .foregroundColor(.white)
                        .font(.headline)
                }
            }
            Button(action: {
                presentationMode.wrappedValue.dismiss()
                
            }, label: {
                Text("")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
            })
        }
    }
}
#Preview {
    ViewModelBootcamp()
    //RandomScreen()
}
//in production apps , add classes to hold all the extra data
// the view should be updating
// published inside the class to tell something changed
//conform the class to obsservable object to observe the object
// initialize  inside the class state object , if anything gets published update auto
//if the class has to be passed then used observed object from screen to screen
