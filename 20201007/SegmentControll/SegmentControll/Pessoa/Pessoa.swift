//
// Created by Marcelo Squarisi on 07/10/20.
//

import Foundation

class Pessoa{

    var name: String
    var photo: String

    init(name: String, photo: String) {
        self.name = name
        self.photo = photo
    }


    public static func getPessoasDummyList() -> [Pessoa]{
        var personsArray = [Pessoa]()
        personsArray.append(Pessoa(name: "Pessoa_01", photo: "Pessoa.png"))
        personsArray.append(Pessoa(name: "Pessoa_02", photo: "Pessoa.png"))
        personsArray.append(Pessoa(name: "Pessoa_03", photo: "Pessoa.png"))
        personsArray.append(Pessoa(name: "Pessoa_04", photo: "Pessoa.png"))
        personsArray.append(Pessoa(name: "Pessoa_05", photo: "Pessoa.png"))
        personsArray.append(Pessoa(name: "Pessoa_06", photo: "Pessoa.png"))
        personsArray.append(Pessoa(name: "Pessoa_07", photo: "Pessoa.png"))
        personsArray.append(Pessoa(name: "Pessoa_08", photo: "Pessoa.png"))
        return personsArray
    }

}
