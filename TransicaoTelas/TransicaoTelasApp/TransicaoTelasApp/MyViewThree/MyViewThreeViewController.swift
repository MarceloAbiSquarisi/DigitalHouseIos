//
//  MyViewThreeViewController.swift
//  TransicaoTelasApp
//
//  Created by Marcelo Squarisi on 22/09/20.
//

import UIKit

class MyViewThreeViewController: UIViewController {

    
    
    
    @IBAction func actionViewThreeModal(_ sender: Any) {
        
        if let viewThrewModal = UIStoryboard(name: "MyViewThreeModal", bundle: nil).instantiateInitialViewController() as? MyViewThreeModalViewController{
            
            present(viewThrewModal, animated: true, completion: nil)
        }
        
    }
    
    
    @IBAction func actipnViewThreePushed(_ sender: Any) {
        
        if let viewThreePushed = UIStoryboard(name: "ViewThreePuhsed", bundle: nil).instantiateInitialViewController() as? ViewThreePuhsedViewController{
            
            navigationController?.pushViewController(viewThreePushed, animated: true)
        }
    }
    
    @IBAction func actionFechar(_ sender: Any) {
        
        navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    

    
}
