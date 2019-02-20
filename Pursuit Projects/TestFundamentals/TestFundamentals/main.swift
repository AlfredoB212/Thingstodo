//
//  main.swift
//  TestFundamentals
//
//  Created by Alfredo Barragan on 12/20/18.
//  Copyright © 2018 Alfredo Barragan. All rights reserved.
//

import Foundation

//Write a function that sums an array of Ints.  For full credit, use a higher ordered function.
//
//Input: [2,35,6,7]
//Output: 50

func sum(num:[Int]) -> Int {
    let sumOfArrays = num.reduce(0, +)
    return sumOfArrays
}

print(sum(num: [2,35,6,7]))


//Use the following dictionary for questions 2 and 3
//
let someCapitals = ["Alabama" : "Montgomery",
                    "Alaska" : "Juneau",
                    "Arizona" : "Phoenix",
                    "Arkansas" : "Little Rock",
                    "California" : "Sacramento",
                    "Colorado" : "Denver"]

//Use the someCapitals dictionary to write code that prints the capital of Arkansas using best practices.



for values in someCapitals {
    if values.key == "Arkansas" {
        print(values.value)
    }
}

//You're in Denver and have forgotten what state you're in. Use the someCapitals dictionary to find and print the state.

var stateCurrentlyIn = "Denver"
for values in someCapitals {
    if values.value == stateCurrentlyIn {
        print(values.key)
    }
}

//Use the following enum for questions 4 and 5

//enum Ship: String {
//    case battle
//    case friend
//}

//Use the Ship enum to write code that prints the following string.
//
//"Hi, friend, let's do battle"

enum Ship: String {
    case battle = "Hi, enemy, let's do battle"
    case friend = "Hi, friend, let's do battle"
}

print(Ship.friend.rawValue)




//Write a function that takes an instance of Ship as its parameter and returns "SAFE" if it's .friend, or "DANGER" if it's .battle.

func dangerOrSafe(for Ship: Ship) {
    switch Ship {
    case .battle:
        print("Danger")
    case .friend:
        print("Friend")
    }
}

let numb3rs = ["1", "2", "chair", "5", "seventeen", "89"]



//Apple, in an effort to do its part in keeping jobs in America has removed the map function from the library.
//
//
//Write a simple clone of the map function. It should take as its two parameters: an array of String and a closure of type (String)->Int?
//
//
//
//Call your function with a suitable closure to transform the elements in the constant numb3rs to either an Int or nil as appropriate.

func fakeMap(array:[String], closure:(String) -> Int?) {
    var mappedThings = ""
    for elements in array {
        mappedThings += elements
        print(mappedThings)
    }
}

//fakeMap(array: numb3rs, closure: numb3rs -> Int?)


//Write a function that takes an array of Strings as input and return an array that contains only strings that end in "ing".
//
//
//
//Sample input:  ["canoeing", "hiking", "be", "camping", "drive", "drink", "shampooing"]
//
//Sample output: ["canoeing", "hiking", "camping", "shampooing"]

func addingIng(parameter: [String]) -> [String] {
    var newArray = [String]()
    for elements in parameter {
        if elements.contains("ing") {
            newArray.append(elements)
        }
    }
    return newArray
}

print(addingIng(parameter: ["canoeing", "hiking", "be", "camping", "drive", "drink", "shampooing"]))


//a) Create a class PursuitStaff with the following properties:
//
//name: String
//id: Int
//favoriteColor: String
//b) Make an instance of PursuitStaff from each line of data below (5 total), and put them in an array named allPursuitStaff.
//
//Alan, 3217, green
//Alex, 3236, purple
//Istishna, 3214, blue
//Kaniz, 3222, yellow
//XianXian, 3233, red
//c) Use higher order functions to create a new array named nameSortedStaff of allPursuitStaff sorted by name
//
//d) Use higher order functions to create a new array named idSortedStaff sorted by id
//
//e) Iterate through allPursuitStaff and change everyone's favorite color to green
//a) Create a class PursuitStaff with the following properties:
//
//name: String
//id: Int
//favoriteColor: String
class PursuitStaff: CustomStringConvertible {
    var description: String
    
    var name: String
    var id: Int
    var favoriteColor: String
    
    init(name:String, id: Int, favoriteColor:String, description: String) {
        self.name = name
        self.id = id
        self.favoriteColor = favoriteColor
        self.description = description
    }
}
//b) Make an instance of PursuitStaff from each line of data below (5 total), and put them in an array named allPursuitStaff.
//
//Alan, 3217, green
//Alex, 3236, purple
//Istishna, 3214, blue
//Kaniz, 3222, yellow
//XianXian, 3233, red
var alan = PursuitStaff(name: "Alan", id: 3217, favoriteColor: "green", description: "alan")
var alex = PursuitStaff(name: "Alex", id: 3236, favoriteColor: "purple", description: "alex")
var istishna = PursuitStaff(name: "Istishna", id: 3214, favoriteColor: "blue", description: "istishna")
var xianXian = PursuitStaff(name: "XianXian", id: 3233, favoriteColor: "red", description: "xianXian")
var kaniz = PursuitStaff(name: "Kaniz", id: 3222, favoriteColor: "yellow", description: "kaniz")
var allPursuitStaff = [alex,alan,istishna,xianXian,kaniz]
//c) Use higher order functions to create a new array named nameSortedStaff of allPursuitStaff sorted by name
//
let nameSortedStaff = allPursuitStaff.sorted {
    $0.name < $1.name
}
print(nameSortedStaff)

//d) Use higher order functions to create a new array named idSortedStaff sorted by id
//
let idSortedStaff = allPursuitStaff.sorted {
    $0.id < $1.id
}

print(idSortedStaff)

//e) Iterate through allPursuitStaff and change everyone's favorite color to green
for pursuitStaff in allPursuitStaff {
    pursuitStaff.favoriteColor = "green"
}
print(alex.favoriteColor)
print(istishna.favoriteColor)
