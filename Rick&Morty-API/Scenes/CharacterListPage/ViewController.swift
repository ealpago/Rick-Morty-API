//
//  ViewController.swift
//  Rick&Morty-API
//
//  Created by Emre Alpago on 27.08.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var CollectionViewCellModelArray:[CollectionCellModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        managingData()
    }
    
    func managingData(){
        NetworkManager.service.request(requestRoute: .getAllCharacters , responseModel: CharacterModel.self) { [weak self] details in
            guard let result = details.results else {return}
            guard let self = self else {return}
            
            var collectionCellModelItemsArray:[CollectionCellModelItems] = []
       
            for item in result {
                let collectionModel = CollectionCellModelItems(characterImage: item.url, characterName: item.name)
                collectionCellModelItemsArray.append(collectionModel)
            }
    
            self.CollectionViewCellModelArray.append(CollectionCellModel(items: collectionCellModelItemsArray))
            

        }
        
        print(CollectionViewCellModelArray.count)
    }
}
    




