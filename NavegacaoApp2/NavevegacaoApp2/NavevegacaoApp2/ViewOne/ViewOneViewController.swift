//
//  ViewOneViewController.swift
//  NavevegacaoApp2
//
//  Created by Marcelo Squarisi on 22/09/20.
//

import UIKit

class ViewOneViewController: UIViewController {

    
    @IBAction func actionFechar(_ sender: Any) {
        
        navigationController?.popViewController(animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "View One"

        
    }
    

    
}
