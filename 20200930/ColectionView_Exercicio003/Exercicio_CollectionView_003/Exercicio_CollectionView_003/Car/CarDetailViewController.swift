//
//  CarDetailViewController.swift
//  Exercicio_CollectionView_003
//
//  Created by Marcelo Squarisi on 05/10/20.
//

import UIKit

class CarDetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    

    private func getViewController() -> CarDetailViewController?{
        if let viewController = UIStoryboard(name: "Car", bundle: nil).instantiateInitialViewController()as? CarDetailViewController {
            return viewController
        }
        return nil
    }

}
