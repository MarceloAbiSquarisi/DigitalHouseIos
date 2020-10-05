//
//  PessoaViewController.swift
//  Exercicio_TableView_001
//
//  Created by Marcelo Squarisi on 05/10/20.
//

import UIKit

class PessoaViewController: UIViewController {

    var pessoa: Pessoa?
    @IBOutlet weak var labelName: UILabel?

    @IBAction func actionCloseButton() {
        closeView()

    }

    override func viewDidLoad() {
        super.viewDidLoad()

        if let pessoa = pessoa {
            labelName?.text = pessoa.name
        }

        
    }

    static func getPessoaViewController() -> PessoaViewController? {
        if let viewPessoa = UIStoryboard(name: "Pessoa", bundle: nil).instantiateInitialViewController()
                as? PessoaViewController {
            return viewPessoa
        }
        return  nil

    }
    
    private func closeView(){
        dismiss(animated: true, completion: nil)
    }

   
}
