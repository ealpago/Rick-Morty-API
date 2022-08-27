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
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
}
