//
//  NetworkServices.swift
//  Rick&Morty-API
//
//  Created by Emre Alpago on 27.08.2022.
//

import Foundation

public enum HTTPMethod: String {
    case get = "GET"
    case post = "POST"
    case put = "PUT"
    case delete = "DELETE"
}

public enum NetworkRouter{
    case getAllCharacters
    case getSingleCharacter(characterID:Int)
    case getLocations
    case getSingleLocation(locationID:Int)
    case getEpisodes
    case getSingleEpisodes(episodesID:Int)
    
    public var method: HTTPMethod{
        switch self {
        case .getAllCharacters:
            return .get
        case .getSingleCharacter(_):
            return .get
        case .getLocations:
            return .get
        case .getSingleLocation(_):
            return .get
        case .getEpisodes:
            return .get
        case .getSingleEpisodes(_):
            return .get
        }
    }
    
    public var path:String{
        switch self {
        case .getAllCharacters:
            return APIConstants.shared.rickAndMortyCharacterURL
        case .getSingleCharacter(let characterID):
            return APIConstants.shared.rickAndMortyCharacterURL + "\(characterID)"
        case .getLocations:
            return APIConstants.shared.rickAndMortyLocationURL
        case .getSingleLocation(let locationID):
            return APIConstants.shared.rickAndMortyLocationURL + "\(locationID)"
        case .getEpisodes:
            return APIConstants.shared.rickAndMortyEpisodeURL
        case .getSingleEpisodes(let episodesID):
            return APIConstants.shared.rickAndMortyEpisodeURL + "\(episodesID)"
        }
    }
}

class NetworkManager {
    static let service = NetworkManager()
    public func request<T: Codable>(requestRoute: NetworkRouter, responseModel:T.Type, completion:@escaping (_ details: T) -> Void){
        if let url = URL(string: requestRoute.path){
            var request = URLRequest(url: url)
            request.httpMethod = requestRoute.method.rawValue
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: request) { data, response, error in
                do {
                    let data = try JSONDecoder().decode(T.self, from: data!)
                    completion(data)
                } catch let e as NSError {
                    print("error : \(e)")
                }
            }
            task.resume()
        }
    }
}


