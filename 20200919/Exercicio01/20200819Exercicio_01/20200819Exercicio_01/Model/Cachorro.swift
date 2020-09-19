//
//  Cachorro.swift
//  20200819Exercicio_01
//
//  Created by Marcelo Squarisi on 18/09/20.
//

import Foundation

class Cachorro {
    
    var nome: String
    var raca: String
    
    init(nome: String, raca: String) {
        self.nome = nome
        self.raca = raca
    }
}

extension Cachorro: PesquisaProtocol {
    func getTextoParaPesquisa() -> String {
        return "\(nome) \(raca)"
    }
}
