//
//  Aluno.swift
//  ExecicioPessoas
//
//  Created by Marcelo Squarisi on 18/09/20.
//

import Foundation

class Aluno: Pessoa {
        
    var turma: String
    
    
    init (turma: String, nome: String, sobrenome: String, idade: Int){
        
        self.turma = turma
        super.init(nome: nome, sobrenome: sobrenome, idade: idade)
    }
    
    init (turma: String, pessoa: Pessoa)
    {
        self.turma = turma
        super.init(nome: pessoa.nome, sobrenome: pessoa.sobrenome, idade: pessoa.idade)
    }
    
    override func levantar() {
        print("\(getNomeCompleto()) levanta as 6 horas ")
    }
    
}
