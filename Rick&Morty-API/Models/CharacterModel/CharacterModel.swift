// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let characterModel = try? newJSONDecoder().decode(CharacterModel.self, from: jsonData)

import Foundation

// MARK: - CharacterModel
class CharacterModel: Codable {
    var info: Info?
    var results: [Result]?

    init(info: Info?, results: [Result]?) {
        self.info = info
        self.results = results
    }
}
