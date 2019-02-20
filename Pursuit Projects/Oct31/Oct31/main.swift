//
//  main.swift
//  Oct31
//
//  Created by Alfredo Barragan on 10/31/18.
//  Copyright © 2018 Alfredo Barragan. All rights reserved.
//

import Foundation



//// create a function that takes in two arrays of ints and a closure that takes in two ints and returns an int. the fucntion returns an int.
//// [3,4,5,6]
//// [1,2,3,4]
//func combinesArray(array1:[Int],array2:[Int], operation: (Int,Int) -> Int) -> [Int] {
//    var newArray = [Int]()
//    for index in 0..<array1.count {
//        let firstNumber = array1[index]
//        let secondNumber = array2[index]
//        let combinedNumber = operation(firstNumber,secondNumber)
//        newArray.append(combinedNumber)
//    }
//    return newArray
//}
//
//let firstArray = [3,4,5,6]
//let secondArray = [1,2,3,4]
//let myAddingClosure = {(firstNumber:Int,secondNumber:Int) -> Int in
//    return firstNumber + secondNumber
//}
//
//print(combinesArray(array1: firstArray, array2: secondArray, operation: myAddingClosure))

// Initializer

class Pokemon {
    var name = "Pikachu"
    var level = 10
    var male = false
    init(name: String, level: Int, male: Bool) {
    self.name = name
    self.level = level
    self.male = male
}
}
let firstPokemon = Pokemon(name: "Bulbasaur", level: 2, male: true)
print(firstPokemon.name)

let secondPokemon = Pokemon(name: "Gloom", level: 24, male: false)
print(secondPokemon.name)


class FireTypePokemon: Pokemon {
    var numberOfAttacks: Int
    init(name: String, level: Int, numberOfAttacks: Int, male: Bool) {
        self.numberOfAttacks = numberOfAttacks
        super.init(name: name, level: level, male: male)

}
}

// create WaterTypePokemon that inherits from Pokemon and has a property that i can set called swimmingDistance (Double)

class WaterTypePokemon: Pokemon {
    var swimmingDistance: Double
    init(name: String, level: Int, male: Bool, swimmingDistance: Double) {
    self.swimmingDistance = swimmingDistance
        super.init(name: name, level: level, male: male)
}

    convenience init(swimmingDistance: Double) {
    self.init(name: "Starmie", level: 43, male: false, swimmingDistance: swimmingDistance)
}
}


let myStarmie = WaterTypePokemon.init(swimmingDistance: 353094803940)
print(myStarmie.level)
print(myStarmie.name)
print(myStarmie.swimmingDistance)



// Create a grassTypePokemon that inherits from Pokemon, has a new property called Vine Whip (Bool). Create a default initializer that sets everything up and 1 convienience initializer that defaults the name to "Bulbasaur"



class grassTypePokemon: Pokemon {
    var vineWhip: Bool
    init(name: String, level: Int, male: Bool, vineWhip: Bool) {
    self.vineWhip = vineWhip
    super.init(name:name,level:level,male:male)
}
    convenience init(vineWhip: Bool) {
    self.init(name: "Bulbasaur", level: 13, male: true, vineWhip: vineWhip)
}
}




let myFirstGrassPokemon = grassTypePokemon.init(name: "oddish", level: 3, male: false, vineWhip: false)
print(myFirstGrassPokemon.vineWhip)



// create a subclass called electricTypePokemon that has a new property called voltage (int), create a defaul initializer for all the properties and a convience initializer for every single properties


class electricTypePokemon: Pokemon {
    var voltage: Int
    init(name: String, level: Int, male: Bool, voltage: Int) {
        self.voltage = voltage
        super.init(name:name,level:level,male:male)
    }
    convenience init(voltage: Int) {
        self.init(name:"Jolteon",level:13,male:true,voltage: voltage)
    }
    convenience init(name: String) {
        self.init(name: name ,level:13,male:true,voltage:44)
}
    convenience init(level: Int) {
        self.init(name: "Jolteon", level: level ,male:true, voltage: 44)
}
}
