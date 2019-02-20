//
//  main.swift
//  UnitOneExam
//
//  Created by Alfredo Barragan on 11/5/18.
//  Copyright © 2018 Alfredo Barragan. All rights reserved.
//

import Foundation




////a. Make a call to addTwoInts with arguments of your choice, but of the correct types.  Your call should return 7:
//
//func addTwoInts(_ a: Int, _ b: Int) -> Int {
//
//    return a + b
//
//}
//
//var mathFunction: (Int, Int) -> Int = addTwoInts
//
//
//print(addTwoInts(5, 2))
//
//
////b. Use mathFunction to get the same result.
//
//print(mathFunction(5,2))



//var sampleStr = "These are the voyages of the starship Enterprise"
//var yIsVowel = true
//var vowels = "a, e, i, o, u, A, E, I, O, U"
//var emptyString = ""
//
//
//func removeAllVowels( c: String, d: Bool) -> String {
//    for letters in sampleStr {
//        if letters != "a" && letters != "e" && letters != "i" && letters != "o" && letters != "u" && letters != "A" && letters != "E" && letters != "I" && letters != "O" && letters != "U" && yIsVowel == true
//        {
//            emptyString.append(letters)
//        } else {
//            if letters != "a" && letters != "e" && letters != "i" && letters != "o" && letters != "u" && letters != "A" && letters != "E" && letters != "I" && letters != "O" && letters != "U" && letters != "y" && letters != "Y" {
//                emptyString.append(letters)
//            }
//        }
//
//        }
//
//    return emptyString
//}
//
//print(removeAllVowels(c: sampleStr, d: yIsVowel))


let arr = [41, 32, 93, 86, 24]

let ascending = { (a: Int, b: Int) -> Bool in

    return a < b


}

let sortedNumbers = arr.sorted(by:ascending)

print(sortedNumbers)
//
//let shittyAscending = { (a: Int, b: Int) -> Bool in
//
//    return a < b
//
//
//}
//
//let badAscending = { (a: Int, b: Int) -> Bool in
//
//        return a < b
//    }
//
//let shittySortedNumbers = arr.sorted(by: badAscending)
//
//
//print(shittySortedNumbers)
//
//print(badAscending(arr[3], arr[4]))










//--------------------------------------------------------------------------------------------------

//let myArr = [3,2,1,8,1]
//
//let newArr2 = myArr.map { (a: Int) -> Int in
//    return (a - a) + 2
//
//}
//
//var sum = 0
//
//for val in newArr2 {
//
//    sum += val
//
//}
//
//print(sum)
//

//enum CompassPoint: String {
//
//    case north
//    case south
//    case east
//    case west
//}
//
//func directionCompassPoint (CompassPoint: CompassPoint) {
//
//switch CompassPoint {
//case .north:
//    print("up")
//case .south:
//    print("down")
//case .east:
//    print("left")
//case .west:
//    print("right")
//
//
//
//
//}
//}
//
//print(directionCompassPoint(CompassPoint: CompassPoint.north))


class Feature {
var description: String
init(description: String) {
    self.description = description
    }
}

class Point: Feature {
var x: Double
var y: Double
    
init(description: String, x: Double, y: Double) {
self.x = x
self.y = y
        super.init(description: description)
    }
    
    
    
    convenience init (x: Double , y: Double) {
        self.init(description: "Here is where your destination lies \(x) and \(y)" , x: x, y: y)
    
    
    
    
    }
}

var destination = Point(description: "Paris, France", x: 100.00, y: 200.00)
print(destination.description)
print(destination.x)
print(destination.y)

var vacationDestination = Point.init(x: 10.2, y: 50.5)
print(vacationDestination.description)

class City: Point {
var name: String
var population: Int
    
    
    
    
    init(description: String, x: Double, y: Double, name: String, population: Int) {
        self.name = name
        self.population = population
        super.init(description: description, x: x, y: y)
    
    
    
    
    
    }
}
















