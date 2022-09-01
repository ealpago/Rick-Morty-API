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


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
