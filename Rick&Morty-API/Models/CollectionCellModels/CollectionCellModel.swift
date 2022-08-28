//
//  CollectionCellModel.swift
//  Rick&Morty-API
//
//  Created by Emre Alpago on 28.08.2022.
//

import Foundation
import UIKit


class CollectionCellModel{
    var items:[CollectionCellModelItems?] = []
   
    init(items: [CollectionCellModelItems?]) {
        self.items = items
    }
}

