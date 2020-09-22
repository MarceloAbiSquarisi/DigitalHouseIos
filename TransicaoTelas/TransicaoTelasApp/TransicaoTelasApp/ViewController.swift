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
    
    
    @IBAction func actionMyViewTwo(_ sender: Any) {
        
        if let viewTwo = UIStoryboard(name: "MySecondView", bundle: nil).instantiateInitialViewController() as? MySecondViewController{
            
            navigationController?.pushViewController(viewTwo, animated: true)
        }
    }
    
    
    @IBAction func actionViewThree(_ sender: Any) {
        
        if let viewThree = UIStoryboard(name: "MyViewThree", bundle: nil).instantiateInitialViewController() as? MyViewThreeViewController{
            navigationController?.pushViewController(viewThree, animated: true)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Main"
       
    }


}

