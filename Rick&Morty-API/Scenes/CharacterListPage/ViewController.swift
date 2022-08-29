//
//  ViewController.swift
//  Rick&Morty-API
//
//  Created by Emre Alpago on 27.08.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var CharacterCollectionView: UICollectionView?
    var collectionViewCellModelArray:[CollectionCellModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        CharacterCollectionView?.register(UINib(nibName: "CharacterCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CellIdentifier")
        CharacterCollectionView?.delegate = self
        CharacterCollectionView?.dataSource = self
        
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
            self.collectionViewCellModelArray.append(CollectionCellModel(items: collectionCellModelItemsArray))
            DispatchQueue.main.async {
                self.CharacterCollectionView?.reloadData()
            }
        }
        print(collectionViewCellModelArray.count)
    }
}
    

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return collectionViewCellModelArray.count
    }

    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CellIdentifier", for: indexPath) as! CharacterCollectionViewCell
        let cellModel = collectionViewCellModelArray[indexPath.section].items[indexPath.row]!
        cell.setupCell(cellModel: cellModel)
        return cell
    }
    
}
