//
//  AnimalDetailewController.swift
//  TableViewExercicio002
//
//  Created by Marcelo Squarisi on 05/10/20.
//

import UIKit

class AnimalDetailViewController: UIViewController {

    var animal: Animal?
    
    @IBAction func actionCloseButton(){
        closeView()
    }

    @IBOutlet weak var labelName: UILabel?

    override func viewDidLoad() {
        super.viewDidLoad()
        labelName?.text = animal?.name
       
    }
    
    static func getViewController() -> AnimalDetailViewController? {
        if let viewAnimal = UIStoryboard(name: "Animal", bundle: nil).instantiateInitialViewController()
                as? AnimalDetailViewController {
            return viewAnimal
        }
        return nil
    }



    private func closeView(){
        dismiss(animated: true, completion: nil)
    }
  
}
