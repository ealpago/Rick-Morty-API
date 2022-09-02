//
//  CollectionCellModelItems.swift
//  Rick&Morty-API
//
//  Created by Emre Alpago on 28.08.2022.
//

import Foundation
import UIKit

class CollectionCellModelItems{
    var characterImage: String?
    var characterID: Int?
    var characterName: String?
    var characterStatus: Status?
    var characterSpecies: Species?
    var characterOrigin: Location?
    var characterGender: Gender?
    var characterLocation: Location?

    init(characterImage: String?,characterID: Int?, characterName: String?, characterStatus: Status?, characterSpecies: Species?, characterOrigin: Location?, characterGender: Gender?, characterLocation: Location?) {
        self.characterImage = characterImage
        self.characterID = characterID
        self.characterName = characterName
        self.characterStatus = characterStatus
        self.characterSpecies = characterSpecies
        self.characterOrigin = characterOrigin
        self.characterGender = characterGender
        self.characterLocation = characterLocation
    }
}
