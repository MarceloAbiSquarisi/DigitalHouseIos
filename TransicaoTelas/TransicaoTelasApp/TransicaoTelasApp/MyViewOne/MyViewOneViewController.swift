//
//  MyViewOneViewController.swift
//  TransicaoTelasApp
//
//  Created by Marcelo Squarisi on 21/09/20.
//

import UIKit

class MyViewOneViewController: UIViewController {

    @IBAction func actionMyOneViewButton(_ sender: Any) {
        
        if let viewMyOneViewModal = UIStoryboard(name: "MyOneViewModal", bundle: nil).instantiateInitialViewController() as? MyOneViewModalViewController {
        
            present(viewMyOneViewModal, animated: true, completion: nil)
        }
    }
    
    
    @IBAction func actionMyOneViewPushed(_ sender: Any) {
        
        if let view = UIStoryboard(name: "MyOneViewPushed", bundle: nil).instantiateInitialViewController() as? MyOneViewPushedViewController {
            
            navigationController?.pushViewController(view, animated: true)
            
        }
    }
    
    
    @IBAction func actionFechar(_ sender: Any) {
        
        navigationController?.popViewController(animated: true)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "My one view"
        
    }
    

   

}
