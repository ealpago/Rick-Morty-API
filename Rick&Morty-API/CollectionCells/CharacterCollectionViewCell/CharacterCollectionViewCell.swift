//
//  CharacterCollectionViewCell.swift
//  Rick&Morty-API
//
//  Created by Emre Alpago on 27.08.2022.
//

import UIKit

class CharacterCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var characterImageView: UIImageView?
    @IBOutlet var characterNameLabel: UILabel?
    @IBOutlet var characterDetailsButton: UIButton?
    @IBOutlet var topStackView: UIStackView?
    private var itemModel: CollectionCellModelItems?

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    
        self.topStackView?.layer.masksToBounds = true
        self.topStackView?.layer.cornerRadius = self.topStackView!.frame.width/20.0
        self.topStackView?.layer.borderWidth = 0.3
        
        self.characterDetailsButton?.layer.cornerRadius = self.characterDetailsButton!.frame.width/10
    }
    
    func setupCell(cellModel: CollectionCellModelItems) {
        itemModel = cellModel
        if let itemModel = itemModel {
            characterNameLabel?.text = itemModel.characterName
                        DispatchQueue.main.async {
                            let characterImageUrlPath = itemModel.characterImage ?? ""
                            guard let characterImageURL = URL(string: characterImageUrlPath) else {return}
                            self.characterImageView?.downloaded(from: characterImageURL)
                        }
        }
    }
}
