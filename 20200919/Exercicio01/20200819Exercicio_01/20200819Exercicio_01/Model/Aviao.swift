//
//  Aviao.swift
//  20200819Exercicio_01
//
//  Created by Marcelo Squarisi on 18/09/20.
//

import Foundation

class Aviao {
    
    var modelo: String
    var cidade: String
    
    init(modelo: String, cidade: String) {
        self.modelo = modelo
        self.cidade = cidade
    }
}

extension Aviao: PesquisaProtocol {
    func getTextoParaPesquisa() -> String {
        return "\(modelo) \(cidade)"
    }
    
}
