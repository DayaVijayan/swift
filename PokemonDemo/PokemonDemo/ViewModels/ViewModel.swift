//
//  ViewModel.swift
//  PokemonDemo
//
//  Created by daya vijayan on 31/10/23.
//
import Foundation
import SwiftUI
final class ViewModel : ObservableObject{
    private let pokemonManger = PokemonManager()
    @Published var pokemonList = [Pokemon]()
    @Published var pokemonDetails : DetailPOkemon?
    @Published var searchText = ""
    
    var filteredPokemon :[Pokemon]{
        return searchText == "" ? pokemonList : pokemonList.filter{
            $0.name.contains(searchText.lowercased())
        }
    }
    init(){
        self.pokemonList = pokemonManger.getPokemon()
        //        print(self.pokemonList)
    }
    
    func getPokemonIndex(pokemon: Pokemon) -> Int{
        if let index = self.pokemonList.firstIndex(of:pokemon){
            return index + 1
        }
        return 0
    }
    func getDetails(pokemon:Pokemon){
        let id = getPokemonIndex(pokemon: pokemon)
        self.pokemonDetails = DetailPOkemon(id: 0, height: 0, weight: 0)
        pokemonManger.getDetailedPokemon(id: id){data in
            DispatchQueue.main.async{
                self.pokemonDetails = data
            }
        }
    }
    func formatHW(value:Int) -> String{
        let dValue = Double(value)
        let string = String(format: "%.2f",dValue / 10)
        
        return string
    }
}
