//
//  RoundButton.swift
//  Calcauladora
//
//  Created by Marcelo Squarisi on 20/09/20.
//

import Foundation
import UIKit

@IBDesignable class RoundButton: UIButton{
    
        
    
    
    @IBInspectable var isRound: Bool = true {
        didSet{
            UpdateCornerRadius()
        }
    }
    
    
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        UpdateCornerRadius()
    }
    
    
    
    func UpdateCornerRadius(){
        // se é um botão circular, define o raio como metade da altura do botao
        layer.cornerRadius = isRound ? frame.size.height / 2 : 0
    }
}
