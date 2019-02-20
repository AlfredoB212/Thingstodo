//
//  main.swift
//  protolab
//
//  Created by Alfredo Barragan on 11/12/18.
//  Copyright © 2018 Alfredo Barragan. All rights reserved.
//

import Foundation


// Question 2

protocol Vehicle {
    var numberOfWheels: Int { get }
    
    func drive()
}

struct Car: Vehicle {
    var numberOfWheels: Int = 4
    
    func drive() {
        print("Vroom, vroom!")
    }
}

var Toyota = Car()
print(Toyota.numberOfWheels)
print(Toyota.drive())


struct Bike: Vehicle {
    var numberOfWheels: Int = 2
    
    func drive() {
        print("my shoulder hurts")
    }
}

var bike = Bike()
print(bike.numberOfWheels)
print(bike.drive())
















//Question 3.
// Given the below two protocols, create a struct for penguin(a flightless bird) and an eagle.
//Give your structs some properties and have them conform to the appropriate protocols.

protocol Bird {
    var name: String { get }
    var canFly: Bool { get }
}

protocol Flyable {
    var airspeedVelocity: Double { get }
}


struct Penguin: Bird, Flyable {
    var name: String
    
    var canFly: Bool
    
    var airspeedVelocity: Double
    
    var color: String
    
    
}

struct Eagle: Bird, Flyable {
    var name: String
    
    var canFly: Bool
    
    var airspeedVelocity: Double
    
    var isEndangered: Bool
    
    
    
    
}

Penguin(name: "PenguinBoi", canFly: false, airspeedVelocity: 0.0, color: "Black/White")
Eagle(name: "EagleBoi", canFly: true, airspeedVelocity: 45.3, isEndangered: true)



// Create a protocol called Transformation

// create a mutating method called transform

// Make an enum called SuperHero (have it conform to Transformation) and an instance of it named
//bruceBanner. Make it so that when the transform function is called that bruceBanner turns from
//    .notHulk to .hulk.



//Example Output:
//var bruceBanner = SuperHero.notHulk



// Question 4

protocol Transformation {
    mutating func transform()
}
enum SuperHero: Transformation {
    case hulk
    case notHulk
    mutating func transform() {
        switch self {
        case .notHulk:
            self = .hulk
        case .hulk:
            self = .notHulk
        }
    }
}
var bruceBanner = SuperHero.notHulk
bruceBanner.transform()
print(bruceBanner)
bruceBanner.transform()
print(bruceBanner)




//Question 5

protocol Communication {
    var talk: String {get}
}
class Cow: Communication {
    var talk: String = "Mooooooo!"
}
class Dog: Communication {
    var talk: String = "Woof!"
}
class Cat: Communication {
    var talk: String = "I am a talking cat"
}
var cow = Cow()
var dog = Dog()
var cat = Cat()
var array = [cow.talk, dog.talk, cat.talk]
array.forEach{print($0)}
    
    
    


