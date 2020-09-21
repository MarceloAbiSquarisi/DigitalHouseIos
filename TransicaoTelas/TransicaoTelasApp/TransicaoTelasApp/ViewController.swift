//
//  ViewController.swift
//  TransicaoTelasApp
//
//  Created by Marcelo Squarisi on 21/09/20.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func ActionMyViewOne(_ sender: Any) {
        
        if let myViewOne = UIStoryboard(name: "MyViewOne", bundle: nil).instantiateInitialViewController() as? MyViewOneViewController {
            
            //Modal
            //present(myViewOne, animated: true, completion: nil )
            
            //Navigation
            navigationController?.pushViewController(myViewOne, animated: true)
            
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Main"
       
    }


}

