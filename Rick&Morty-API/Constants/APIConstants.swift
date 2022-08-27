//
//  NetworkConstants.swift
//  Rick&Morty-API
//
//  Created by Emre Alpago on 27.08.2022.
//

import Foundation

struct APIConstants{
    static let shared = APIConstants()
    
    let rickAndMortyBaseURL = "https://rickandmortyapi.com/api"
    let rickAndMortyCharacterURL = "https://rickandmortyapi.com/api/character"
    let rickAndMortyLocationURL = "https://rickandmortyapi.com/api/location"
    let rickAndMortyEpisodeURL = "https://rickandmortyapi.com/api/episode"
}
