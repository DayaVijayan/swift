//
//  AllCoinsView.swift
//  SwiftCoinTutorial
//
//  Created by daya vijayan on 03/11/23.
//

import SwiftUI

struct AllCoinsView: View {
    @StateObject var viewModel : HomeViewModel 
    var body: some View {
        VStack (alignment:.leading){
            Text("All Coins")
                .font(.headline)
            HStack{
                Text("Coin")
                Spacer()
                Text("Prices")
            }.font(.caption)
                .foregroundColor(.gray)
                .padding(.horizontal)
            ScrollView{
                VStack{
                    ForEach(viewModel.coins){ coin in
                        CoinRowView(coin: coin)
                    }
                }
            }
        }
        
    }
}

//#Preview {
//    AllCoinsView()
//}
