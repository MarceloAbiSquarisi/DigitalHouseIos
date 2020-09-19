//
//  ViewController.swift
//  ListaCompras
//
//  Created by Marcelo Squarisi on 17/09/20.
//

import UIKit

class ViewController: UIViewController {
    
   
    // MARK: Outlets
    
    
    @IBOutlet weak var TextFildItem: UITextField!
    
    @IBOutlet weak var TextFieldQuantity: UITextField!
    
    @IBOutlet weak var LabelShoppingList: UILabel!
    
    // MARK: Proprietes
    
    var shoppingListItems = ShoppingList()
    
    // MARK: Actions
    
    
    func isValidFields -> Bool () {
        return true
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        TextFildItem.delegate = self
       
    }


}

