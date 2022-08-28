// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let characterModel = try? newJSONDecoder().decode(CharacterModel.self, from: jsonData)

import Foundation

class CharacterModel: Codable {
    var info: CharacterInfo?
    var results: [CharacterResult]?

    init(info: CharacterInfo?, results: [CharacterResult]?) {
        self.info = info
        self.results = results
    }
}
