//
//  ShoppListItem.swift
//  ListaCompras
//
//  Created by Marcelo Squarisi on 17/09/20.
//

import Foundation

class ShoppingListItem {
    
    var productName: String
    var quatity: Int
    
    init(productName: String, quatity: Int) {
        self.productName = productName
        self.quatity = quatity
    }
    
    func setItemQuantity(qty: Int)
    {
        self.quatity = qty
    }
 
}
