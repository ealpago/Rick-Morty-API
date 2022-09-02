//
//  CharacterCollectionViewCell.swift
//  Rick&Morty-API
//
//  Created by Emre Alpago on 27.08.2022.
//

import UIKit

//Passing data with delegate?
protocol DetailsDelegate {
    func details(_ input: CollectionCellModelItems?)
}

class CharacterCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var characterImageView: UIImageView?
    @IBOutlet var characterNameLabel: UILabel?
    @IBOutlet var characterDetailsButton: UIButton?
    @IBOutlet var topStackView: UIStackView?
    private var itemModel: CollectionCellModelItems?
    
    weak var parent:ViewController?
    var delegate: DetailsDelegate?
    
    
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
    
    @IBAction func characterDetailsButtonTapped(_ sender: UIButton){
        self.delegate?.details(itemModel)
        let detailsVC = UIStoryboard.init(name: "CharacterDetailsStoryboard", bundle: Bundle.main).instantiateViewController(withIdentifier: "CharacterDetailsViewController") as? CharacterDetailsViewController
        self.parent?.navigationController?.pushViewController(detailsVC!, animated: true)
    }
}
