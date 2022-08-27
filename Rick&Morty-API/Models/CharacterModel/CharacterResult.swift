//
//  Results.swift
//  Rick&Morty-API
//
//  Created by Emre Alpago on 27.08.2022.
//

import Foundation

struct CharacterResult{
    let id: Int?
    let name: String?
    let status: Status?
    let species: Species?
    let type: String?
    let gender: Gender?
    let origin: Location?
    let location: Location?
    let image: String?
    let episode: [String?] = []
    let url: String?
    let created: String?
}

enum Gender {
    case female
    case male
    case unknown
}

struct Location {
    let name: String
    let url: String
}

enum Species {
    case alien
    case human
}

enum Status {
    case alive
    case dead
    case unknown
}


