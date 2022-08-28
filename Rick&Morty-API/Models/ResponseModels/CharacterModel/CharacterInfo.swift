//
//  Info.swift
//  Rick&Morty-API
//
//  Created by Emre Alpago on 27.08.2022.
//

import Foundation

class CharacterInfo: Codable {
    var count, pages: Int?
    var next: String?

    init(count: Int?, pages: Int?, next: String?) {
        self.count = count
        self.pages = pages
        self.next = next
    }
}
