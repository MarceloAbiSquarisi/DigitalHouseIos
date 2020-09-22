//
//  MySecondViewController.swift
//  TransicaoTelasApp
//
//  Created by Marcelo Squarisi on 21/09/20.
//

import UIKit

class MySecondViewController: UIViewController {

    
    
    @IBAction func actionMyViewTwoModal(_ sender: Any) {
        
        if let view = UIStoryboard(name: "MyViewTwoModal", bundle: nil).instantiateInitialViewController(){
            
            present(view, animated: true, completion: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    
}
