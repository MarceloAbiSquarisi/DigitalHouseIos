//
//  ShopList.swift
//  ListaCompras
//
//  Created by Marcelo Squarisi on 17/09/20.
//

import Foundation

class ShoppingList {
    
    var shoppingListArray = [ShoppingListItem]()
    
    func addItem(item: ShoppingListItem){
        self.shoppingListArray.append(item)
    }
    
    func GetProduct(productName: String) -> ShoppingListItem?
    {
        for ShoppingListItem in self.shoppingListArray{
            if ShoppingListItem.productName.lowercased() == productName.lowercased(){
                return ShoppingListItem
            }
        }
        return nil
    }
    
    
}

