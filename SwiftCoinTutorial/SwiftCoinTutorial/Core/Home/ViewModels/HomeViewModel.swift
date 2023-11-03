//
//  HomeViewModel.swift
//  SwiftCoinTutorial
//
//  Created by daya vijayan on 03/11/23.
//

import SwiftUI
class HomeViewModel: ObservableObject{ //conforming the class to observable object
    @Published var coins = [Coin]()// to get all the coin data to put into ui
    @Published var topMovingCoins = [Coin]()//4
    init(){
        fetchCoinData()
    }
    func fetchCoinData(){
        let urlString = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=true&price_change_percentage=24h"
        
        // creating an url object . converts it into an actual url object
        guard let url = URL(string: urlString)else {return}
        //native code to communicate with the internet to request to the internet to retrieve the contents of url
        //the data , response and the error are the possible components we probably will get
        URLSession.shared.dataTask(with:url){data, response, error in
            if let error = error{
                print("DEBUG: Error \(error.localizedDescription)")
                return // printing the errors
                //return because we want this function to stop if in case of an error
            }
            if let response = response as? HTTPURLResponse{
                print("DEBUG: Response Code \(response.statusCode)")
            }// to print the status code
            
            guard let data = data else{ return}
            //            let dataAsString = String(data: data, encoding: .utf8)//print data as string
            //            print("DEBUG: Data \(dataAsString)")
            do{
                //decoding
                let coins = try JSONDecoder().decode([Coin].self, from:data)
                DispatchQueue.main.async{//fetches the main thread //6
                    self.coins = coins//7
                    self.configureTopMovingCoins()//8
                    
                }
            }catch let error{
                print("DEBUG: failed to decode with error\(error)")
            }
        }.resume()
    }
    
    func configureTopMovingCoins(){
        let topMovers = coins.sorted(by: { $0.priceChangePercentage24H > $1.priceChangePercentage24H })//3
        self.topMovingCoins = Array(topMovers.prefix(5))//5
                                     
    }
    
    
    
    
    
}
