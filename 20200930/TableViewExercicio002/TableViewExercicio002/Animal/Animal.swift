//
// Created by Marcelo Squarisi on 05/10/20.
//

import Foundation

class Animal {

    var name: String
    var breed: String
    var weight: Double
    var specie: String


    init(name: String, breed: String, weight: Double, specie: String) {
        self.name = name
        self.breed = breed
        self.weight = weight
        self.specie = specie
    }

    static func getAnimalDummyArray() -> [Animal]{
        var animalArray = [Animal]()
        animalArray.append(Animal(name: "Totó", breed: "Pastor", weight: 14.5, specie: "Dog"))
        animalArray.append(Animal(name: "Nina", breed: "SRD", weight: 12.5, specie: "Dog"))
        animalArray.append(Animal(name: "Lolita", breed: "Labrador", weight: 20.5, specie: "Dog"))
        animalArray.append(Animal(name: "Garfield", breed: "Tigre de bengala", weight: 50.5, specie: "Cat"))
        animalArray.append(Animal(name: "Totó2", breed: "Pastor2", weight: 14.2, specie: "Dog2"))
        animalArray.append(Animal(name: "Totó3", breed: "Pastor3", weight: 14.3, specie: "Dog3"))
        animalArray.append(Animal(name: "Totó4", breed: "Pastor4", weight: 14.4, specie: "Dog4"))
        animalArray.append(Animal(name: "Totó5", breed: "Pastor5", weight: 14.5, specie: "Dog5"))
        animalArray.append(Animal(name: "Totó6", breed: "Pastor6", weight: 14.6, specie: "Dog6"))
        animalArray.append(Animal(name: "Totó7", breed: "Pastor7", weight: 14.7, specie: "Dog7"))

        return animalArray
    }
}