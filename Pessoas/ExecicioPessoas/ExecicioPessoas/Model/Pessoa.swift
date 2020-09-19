//
//  Pessoa.swift
//  ExecicioPessoas
//
//  Created by Marcelo Squarisi on 18/09/20.
//

import Foundation

class Pessoa: LevantarProtocol {
    
    var nome: String
    var sobrenome: String
    var idade: Int
  
    
    init (nome: String, sobrenome: String, idade: Int){
        self.nome = nome
        self.sobrenome = sobrenome
        self.idade = idade
    }
    
    func getNomeCompleto() -> String{
        return self.nome + self.sobrenome
    }
    
    func levantar()
    {
        print ("\(getNomeCompleto()) levanta as 8 horas")
    }
    
}
