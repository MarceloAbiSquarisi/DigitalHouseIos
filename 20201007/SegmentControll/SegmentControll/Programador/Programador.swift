//
// Created by Marcelo Squarisi on 07/10/20.
//

import Foundation

class Programador {

    var name: String
    var photo: String

    init(name: String, photo: String) {
        self.name = name
        self.photo = photo
    }

    public static func getProgramadorDummyList() -> [Programador]{
        var programdorArray = [Programador]()
        programdorArray.append(Programador(name: "Developer.jpeg", photo: "Foto_02"))
        programdorArray.append(Programador(name: "Developer.jpeg", photo: "Foto_02"))
        programdorArray.append(Programador(name: "Developer.jpeg", photo: "Foto_02"))
        programdorArray.append(Programador(name: "Developer.jpeg", photo: "Foto_03"))
        programdorArray.append(Programador(name: "Developer.jpeg", photo: "Foto_04"))
        programdorArray.append(Programador(name: "Developer.jpeg", photo: "Foto_05"))
        programdorArray.append(Programador(name: "Developer.jpeg", photo: "Foto_06"))
        programdorArray.append(Programador(name: "Developer.jpeg", photo: "Foto_07"))
        return programdorArray
    }
}
