//
//  PessoaJuridica.swift
//  20200819Exercicio_01
//
//  Created by Marcelo Squarisi on 18/09/20.
//

import Foundation

class PessoaJuridica {
    
    var nome: String
    var cnpj: String
    
    init(nome: String, cnpj: String) {
        self.nome = nome
        self.cnpj = cnpj
    }
}

extension PessoaJuridica: PesquisaProtocol {
    func getTextoParaPesquisa() -> String {
        return "\(nome) \(cnpj)"
    }
    
}
