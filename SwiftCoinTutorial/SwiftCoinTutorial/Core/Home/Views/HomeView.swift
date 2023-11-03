//
//  HomeView.swift
//  SwiftCoinTutorial
//
//  Created by daya vijayan on 03/11/23.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    var body: some View {
        NavigationView{
            ScrollView(.vertical,showsIndicators:false){
                //top movers view
                TopMoversView(viewModel: viewModel)
                
                Divider()
                
                //all coin view
                AllCoinsView(viewModel: viewModel)
                
            }.navigationTitle("Live Prices")
        }
    }
}

#Preview {
    HomeView()
}
