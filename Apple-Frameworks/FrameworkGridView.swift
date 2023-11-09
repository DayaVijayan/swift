//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by daya vijayan on 08/11/23.
//

import SwiftUI

struct FrameworkGridView: View {
    @StateObject var viewModel = FrameworkGridViewModel()
    
   // viewModel is gonna stay alive (persist)
    //stateObject and ObservedObject are similar
        //creating----stateObject
    //injecting -------ObservedObject
    
    var body: some View {
        NavigationView{
    
              List{
                    ForEach(MockData.frameworks){framework in
                        NavigationLink( destination:DetailView(framework: framework, isShowingDetailView: $viewModel.isShowingDetailView)){
                            FrameworkTitleView(framework: framework)
                        }
                    }
                }
      
           .navigationTitle("Apple Frameworks")
           
               //showing default value if it is nil.
           }
        .accentColor(Color(.label))
                
                
        }
       
        
    }


#Preview {
    FrameworkGridView()
}


