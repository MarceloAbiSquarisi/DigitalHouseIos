//
//  DadosFicticios.swift
//  20200819Exercicio_01
//
//  Created by Marcelo Squarisi on 18/09/20.
//

import Foundation

class DadosFicticios {
    
    var dados = [PesquisaProtocol]()
    
    init (){
        dados.append(Aviao(modelo: "Boing 737", cidade: "Rio de Janeiro"))
        dados.append(Aviao(modelo: "A 380", cidade: "Dubai"))
        dados.append(PessoaJuridica(nome: "Dgital House", cnpj: "00.123.457/0001-00"))
        dados.append(PessoaFisica(nome: "Fulano de Tal", cpf: "000.000.457-00"))
        dados.append(Cachorro(nome: "Toto", raca: "SRD"))
        dados.append(Caneta(marca: "BIC"))
    }
}
