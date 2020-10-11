//
//  ProgramadorViewController.swift
//  SegmentControll
//
//  Created by Marcelo Squarisi on 07/10/20.
//

import UIKit

class ProgramadorViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    public static func getViewController() -> ProgramadorViewController?{
        if let viewController = UIStoryboard(name: "Programador", bundle: nil).instantiateInitialViewController()
                as? ProgramadorViewController {
            return viewController
        }
        return nil
    }
    
    private func closeViewModal()
    {
        dismiss(animated: true, completion: nil)
    }
    
    private func closeViewNavigation()
    {
        navigationController?.popViewController(animated: true)
    }

}
