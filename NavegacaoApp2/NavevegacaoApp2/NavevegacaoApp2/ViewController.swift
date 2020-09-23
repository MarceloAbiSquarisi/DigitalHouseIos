//
//  ViewController.swift
//  NavevegacaoApp2
//
//  Created by Marcelo Squarisi on 22/09/20.
//

import UIKit

class ViewController: UIViewController {

    
    @IBAction func actionViewOne(_ sender: Any) {
        
        /*
        if let viewOne = UIStoryboard(name: "ViewOne", bundle: nil).instantiateInitialViewController() as? ViewOneViewController {
            
            navigationController?.pushViewController(viewOne, animated: true)
        }
 */
        /*
        if let viewOne = UIStoryboard(name: "ViewOne", bundle: nil).instantiateInitialViewController() {
            
            navigationController?.pushViewController(viewOne, animated: true)
        }
 */
   
        navegatePush(view: "ViewOne")
        
        
    }
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    func navegatePush (view: String){
        if let destinationView = UIStoryboard(name: view, bundle: nil).instantiateInitialViewController()  {
            
            navigationController?.pushViewController(destinationView, animated: true)
            
        }
        
    }

}
