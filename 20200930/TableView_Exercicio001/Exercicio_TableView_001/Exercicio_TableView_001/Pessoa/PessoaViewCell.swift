//
//  PessoaViewCell.swift
//  Exercicio_TableView_001
//
//  Created by Marcelo Squarisi on 05/10/20.
//

import UIKit

class PessoaViewCell: UITableViewCell {


    var pessoa: Pessoa?
    @IBOutlet weak var labelName: UILabel?
    
    @IBOutlet weak var labelPosition: UILabel?
    
    @IBOutlet weak var labelEmail: UILabel?
    
    
    func setup (pessoa: Pessoa) {
        labelName?.text = pessoa.name
        labelPosition?.text = pessoa.position
        labelEmail?.text = pessoa.email
    }

}
