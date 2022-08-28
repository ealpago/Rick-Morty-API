//
//  Result.swift
//  Rick&Morty-API
//
//  Created by Emre Alpago on 27.08.2022.
//

import Foundation

struct LocationResult {
    let id: Int?	
    let name: String?
    let type: String?
    let dimension: String?
    let residents: [String?] = []
    let url: String?
    let created: String?
}
