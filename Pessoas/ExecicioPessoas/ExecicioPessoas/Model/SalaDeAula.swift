//
//  SalaDeAula.swift
//  ExecicioPessoas
//
//  Created by Marcelo Squarisi on 18/09/20.
//

import Foundation

class  SalaDeAula {
    
    var nomeSalaAula: String
    var alunos = [Aluno]()
    
    
    init (nomeSala: String)
    {
        self.nomeSalaAula = nomeSala
    }
    
    
    init (nomeSala: String, alunos: [Aluno])
    {
        self.nomeSalaAula = nomeSala
        self.alunos = alunos
    }
    
    
    
    
}
