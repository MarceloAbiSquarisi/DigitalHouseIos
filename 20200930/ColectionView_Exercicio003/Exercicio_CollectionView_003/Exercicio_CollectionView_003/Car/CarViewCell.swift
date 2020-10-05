//
//  CarViewCell.swift
//  Exercicio_CollectionView_003
//
//  Created by Marcelo Squarisi on 05/10/20.
//

import UIKit

class CarViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageViewFoto: UIImageView?
    
    @IBOutlet weak var labelCarro: UILabel?
    
    
    
    func setup(car: Car)  {
        imageViewFoto?.image = UIImage(named: car.image)
        labelCarro?.text = car.name
    }
}
