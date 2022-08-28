//
//  Results.swift
//  Rick&Morty-API
//
//  Created by Emre Alpago on 27.08.2022.
//

import Foundation

class Result: Codable {
    var id: Int?
    var name, airDate, episode: String?
    var characters: [String]?
    var url: String?
    var created: String?

    enum CodingKeys: String, CodingKey {
        case id, name
        case airDate = "air_date"
        case episode, characters, url, created
    }

    init(id: Int?, name: String?, airDate: String?, episode: String?, characters: [String]?, url: String?, created: String?) {
        self.id = id
        self.name = name
        self.airDate = airDate
        self.episode = episode
        self.characters = characters
        self.url = url
        self.created = created
    }
}
