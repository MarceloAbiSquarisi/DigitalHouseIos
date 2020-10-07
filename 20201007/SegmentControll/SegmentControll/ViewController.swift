//
//  ViewController.swift
//  SegmentControll
//
//  Created by Marcelo Squarisi on 07/10/20.
//

import UIKit

class ViewController: UIViewController {
    
    enum ViewSelectedOption {
        static let Programador = 0
        static let Pessoa = 1
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    func openProgramadorView() {
        if let viewControler = ProgramadorViewController.getViewController() {

            present(viewControler, animated: true, completion: nil)
        }
    }

    func openPessoaView() {
        if let viewControler = PessoaViewController.getViewController() {

            navigationController?.pushViewController(viewControler, animated: true)
        }
    }

}

