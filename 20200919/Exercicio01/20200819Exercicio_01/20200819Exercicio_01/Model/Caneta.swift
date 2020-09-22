//
//  Caneta.swift
//  20200819Exercicio_01
//
//  Created by Marcelo Squarisi on 18/09/20.
//

import Foundation

class Caneta {
    
    var marca: String
    
    init(marca: String) {
        self.marca = marca
    }
    
}

extension Caneta: PesquisaProtocol {
    func getTextoParaPesquisa() -> String {
        return "\(marca)"
    }
}
