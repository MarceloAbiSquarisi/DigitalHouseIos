//
//  PessoaFisica.swift
//  20200819Exercicio_01
//
//  Created by Marcelo Squarisi on 18/09/20.
//

import Foundation

class PessoaFisica {
    
    var nome: String
    var cpf: String
    
    init(nome: String, cpf: String) {
        self.nome = nome
        self.cpf = cpf
    }
}

extension PessoaFisica: PesquisaProtocol {
    func getTextoParaPesquisa() -> String {
        return "\(nome) \(cpf)"
    }
    
}
