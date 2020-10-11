//
//  AnimalCell.swift
//  TableViewExercicio002
//
//  Created by Marcelo Squarisi on 05/10/20.
//

import UIKit

class AnimalCell: UICollectionViewCell {

    
    @IBOutlet weak var labelName: UILabel?
    
    @IBOutlet weak var labelBreed: UILabel?
    
    @IBOutlet weak var labelWeight: UILabel?
    
    @IBOutlet weak var labelSpecie: UILabel?

    
    func setup(animal: Animal?){
        labelName?.text = animal?.name
        labelBreed?.text = animal?.breed
        labelWeight?.text = String(animal!.weight)
        labelSpecie?.text = animal?.specie
        
    }
}
