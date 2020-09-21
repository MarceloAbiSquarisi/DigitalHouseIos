//
//  MyOneViewPushedViewController.swift
//  TransicaoTelasApp
//
//  Created by Marcelo Squarisi on 21/09/20.
//

import UIKit

class MyOneViewPushedViewController: UIViewController {

    @IBAction func actionCloseButton(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func actionVoltarParaMain(_ sender: Any) {
        
        navigationController?.popToRootViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    
}
