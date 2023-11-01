//
//  PokemonManager.swift
//  PokemonDemo
//
//  Created by daya vijayan on 31/10/23.
//


import Foundation

class PokemonManager{
    func getPokemon() -> [Pokemon]{
    let data: PokemonPage = Bundle.main.decode(file: "pokemon.json")
    let pokemon: [Pokemon] = data.results
    
    return pokemon
    }
    func getDetailedPokemon(id:Int, completion:@escaping (DetailPOkemon) -> ()){
        Bundle.main.fetchData(url: "https://pokeapi.co/api/v2/pokemon/\(id)/", model: DetailPOkemon.self) {data in
        completion(data)
            print(data)
        } failure: {error in
            print(error)
        }
    }
}
