//
//  VierControllerExtend.swift
//  ListaCompras
//
//  Created by Marcelo Squarisi on 17/09/20.
//

import Foundation
import UIKit

extension ViewController: UITextFieldDelegate{
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField == TextFildItem{
            if let itemToAdd = shoppingListItems.GetProduct(productName: textField.text!){
                TextFieldQuantity.text = String(itemToAdd.quatity)
                TextFieldQuantity.becomeFirstResponder()
            }
            
        }
        else if textField == TextFieldQuantity{
            
            
        }
        
        
    }
    
    
}
