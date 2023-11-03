//
//  TopMoversItemView.swift
//  SwiftCoinTutorial
//
//  Created by daya vijayan on 03/11/23.
//

import SwiftUI
import Kingfisher

struct TopMoversItemView: View {
    let coin: Coin //10
    var body: some View {
        VStack(alignment:.leading){
            //image
            KFImage(URL(string: coin.image))
                .resizable()
                .frame(width:32,height:32)
                .foregroundColor(.orange)
                .padding(.bottom,8)
            
            //coin info
            HStack(spacing:2){
                Text(coin.symbol.uppercased())
                    .font(.caption)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Text(coin.currentPrice.toCurrency())
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            //coin percent change
            Text(coin.priceChangePercentage24H.toPercentString())
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .foregroundColor(.green)
        }.frame(width:140,height:140)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color(.systemGray4),lineWidth: 2)
            )
    }
}

//#Preview {
//    TopMoversItemView()
//}
