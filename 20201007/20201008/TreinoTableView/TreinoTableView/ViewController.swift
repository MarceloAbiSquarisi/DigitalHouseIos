//
//  ViewController.swift
//  TreinoTableView
//
//  Created by Marcelo Squarisi on 08/10/20.
//

import UIKit

class ViewController: UIViewController {

   
    @IBAction func actionButtunNavigate(_ sender: Any) {
        if let viewController = PeopleViewController.getViewController() {
            //Propriedades da view controler


            // Navigation controller
            navigationController?.pushViewController(viewController, animated: true)

        }



    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }



}

