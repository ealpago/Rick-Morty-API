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
    var characterName: String?

    init(characterImage: String?, characterName: String?) {
        self.characterImage = characterImage
        self.characterName = characterName
    }
}
