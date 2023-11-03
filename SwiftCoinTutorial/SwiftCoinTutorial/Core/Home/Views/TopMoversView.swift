//
//  TopMoversView.swift
//  SwiftCoinTutorial
//
//  Created by daya vijayan on 03/11/23.
//

import SwiftUI

struct TopMoversView: View {
    @StateObject var viewModel : HomeViewModel //1
    var body: some View {
        VStack(alignment:.leading){
            Text("Top Movers")
                .font(.headline)
            ScrollView(.horizontal){
                HStack(spacing:16){
                    //9
                    ForEach(viewModel.topMovingCoins){ coin in
                        TopMoversItemView(coin: coin)
                        
                    }
                }
            }
        }.padding()
    }
}

#Preview {
    TopMoversView(viewModel: HomeViewModel()) //2
}
