//
//  CollectionCellModelItems.swift
//  Rick&Morty-API
//
//  Created by Emre Alpago on 28.08.2022.
//

import Foundation
import UIKit

class CollectionCellModelItems{
    var characterImage: UIImageView?
    var characterName: UILabel?

    init(characterImage: UIImageView?, characterName: UILabel?) {
        self.characterImage = characterImage
        self.characterName = characterName
    }
}
