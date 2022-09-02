//
//  CharacterDetailsViewController.swift
//  Rick&Morty-API
//
//  Created by Emre Alpago on 1.09.2022.
//

import UIKit

class CharacterDetailsViewController: UIViewController {
    
    @IBOutlet var characterDetailsImageView: UIImageView?
    @IBOutlet var characterDetailsNameLabel: UILabel?
    @IBOutlet var characterDetailsIDLabel: UILabel?
    @IBOutlet var characterDetailsStatusLabel: UILabel?
    @IBOutlet var characterDetailsSpeciesLabel: UILabel?
    @IBOutlet var characterDetailsOriginLabel: UILabel?
    @IBOutlet var characterDetailsGenderLabel: UILabel?
    @IBOutlet var characterDetailsLocationLabel: UILabel?
    
    var details: CollectionCellModelItems?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func initialize(details: CollectionCellModelItems){
        self.details = details
    }
    
    func setupUI(){
        print(details?.characterOrigin?.name ?? "")
        characterDetailsIDLabel?.text = "ID: \(String(details?.characterID ?? 0))"
        characterDetailsNameLabel?.text = (details?.characterName ?? "")
        characterDetailsStatusLabel?.text = "Status: \(details?.characterStatus?.rawValue ?? "")"
        characterDetailsSpeciesLabel?.text = "Species: \(details?.characterSpecies?.rawValue ?? "")"
        characterDetailsOriginLabel?.text = "Origin: \(details?.characterOrigin?.name ?? "")"
        characterDetailsGenderLabel?.text = "Gender: \(details?.characterGender?.rawValue ?? "")"
        characterDetailsLocationLabel?.text = "Location: \(details?.characterLocation?.name ?? "")"
        DispatchQueue.main.async {
            let characterImageUrlPath = self.details?.characterImage ?? ""
            guard let characterImageURL = URL(string: characterImageUrlPath) else {return}
            self.characterDetailsImageView?.downloaded(from: characterImageURL)
        }    }
}
