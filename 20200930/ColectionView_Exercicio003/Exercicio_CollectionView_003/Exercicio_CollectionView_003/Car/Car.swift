//
//  Car.swift
//  Exercicio_CollectionView_003
//
//  Created by Marcelo Squarisi on 05/10/20.
//

import Foundation

class Car {
    
    var name: String
    var image: String

    init(name: String, image: String) {
        self.name = name
        self.image = image
    }

    static func getDummyCarsArray() -> [Car]{
        var carArray = [Car]()
        carArray.append(Car(name: "Carro_1", image: "Carro.jpeg"))
        carArray.append(Car(name: "Carro_2", image: "Carro.jpeg"))
        carArray.append(Car(name: "Carro_3", image: "Carro.jpeg"))
        carArray.append(Car(name: "Carro_4", image: "Carro.jpeg"))
        carArray.append(Car(name: "Carro_5", image: "Carro.jpeg"))
        carArray.append(Car(name: "Carro_6", image: "Carro.jpeg"))
        carArray.append(Car(name: "Carro_7", image: "Carro.jpeg"))
        carArray.append(Car(name: "Carro_8", image: "Carro.jpeg"))
        carArray.append(Car(name: "Carro_9", image: "Carro.jpeg"))
        carArray.append(Car(name: "Carro_10", image: "Carro.jpeg"))
        carArray.append(Car(name: "Carro_11", image: "Carro.jpeg"))

        return carArray
    }
    

    
    
    
    
}
