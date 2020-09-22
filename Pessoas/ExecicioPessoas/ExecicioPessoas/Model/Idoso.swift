//
//  Idoso.swift
//  ExecicioPessoas
//
//  Created by Marcelo Squarisi on 18/09/20.
//

import Foundation

class Idoso: Pessoa {
    
    
    private var dosesTomadas: Int
    
    
    init (dosesTomadas: Int, nome: String, sobrenome: String, idade: Int){
        
        self.dosesTomadas  = dosesTomadas
        super.init(nome: nome, sobrenome: sobrenome, idade: idade)
    }
    
    init (dosesTomadas: Int, pessoa: Pessoa)
    {
        self.dosesTomadas = dosesTomadas
        super.init(nome: pessoa.nome, sobrenome: pessoa.sobrenome, idade: pessoa.idade)
    }
    
    override func levantar() {
        print ("\(getNomeCompleto()) levanta as 11 horas")
     
    }
    
    func tomouRemedio (){
        self.dosesTomadas += 1
    }
    
    func getQuantidadeRemedio () -> Int{
       
        return self.dosesTomadas
    }
    
    
}
