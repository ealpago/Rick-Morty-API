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
    @IBOutlet var characterDetailsStatusLabel: UILabel?
    @IBOutlet var characterDetailsSpeciesLabel: UILabel?
    @IBOutlet var characterDetailsTypeLabel: UILabel?
    @IBOutlet var characterDetailsGenderLabel: UILabel?
    
    var details: CollectionCellModelItems?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupUI()
    }
    
    func initialize(details: CollectionCellModelItems){
        self.details = details
    }
    
    func setupUI(){
        characterDetailsNameLabel?.text = details?.characterName ?? ""
    }
    
}

//MARK: - DetailsDelegate
//extension CharacterDetailsViewController: DetailsDelegate{
//    func details(_ input: CollectionCellModelItems?) {
//        characterDetailsNameLabel?.text = input?.characterName ?? ""
//    }
//}
