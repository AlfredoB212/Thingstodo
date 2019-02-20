//
//  main.swift
//  ReviewForBaselineTests
//
//  Created by Alfredo Barragan on 12/19/18.
//  Copyright © 2018 Alfredo Barragan. All rights reserved.
//

import Foundation

// REVIEW

//=====================================================================================
// FUNDAMENTALS
//=====================================================================================

//Properties
// in a class, struct, enum..a function is refered to as a method, outside a type a function name remains the same

// functions

func coffeeOrTea (coffee: Bool, sugarAmount: Int = 2) {
    let choice = coffee ? "coffee" : "tea"
    print("here is your \(choice) with \(sugarAmount) sugars")
}

// higher order functions

//func customcompactMap(arr: [Int?], closure: (Int?) -> Bool) -> [Int] {
//    var newArr = [Int]()
//    for element in arr {
//        if closure(element) {
//            if let newElement = element {
//                newArr.append(newElement)
//            }
//        }
//        return newArr
//    }
//
//let optionalIntArray = [1,2,nil,4,5,nil,7,8]

// create filter
//func customFilter(arr:[Int], closure:(Int)-> Bool)-> [Int] {
//    var filteredArray: [Int] = []
//    for element in arr {
//        if closure(element)
//    }
//}

// array

// dictionary

// set

// enums

// closures
// create a closure that takes two strings as input and returns the longest character count of the two strings
let closure = {(string1: String, string2: String) -> Int in
    if string1.count > string2.count {
        return string1.count
    } else {
        return string2.count
    }
}

// structs

// classes
class Person {
    let name: String
    let age: Int
    
    // initializers
    
    init(name: String, age: Int) {
        
        self.name = name
        self.age = age
}

    // methods - type methods, instance methods
    static func personInfo() {
        print("a person is a human being")
    }
}
//access type method personInfo()
Person.personInfo()

// create an instance of Person()
let aaron = Person.init(name: "Aaron", age: 24)
print(aaron.age) // 24

//=====================================================================================
// DATA STRUCTURES AND ALGORITHMS
//=====================================================================================

// big O

// node

// linked list

// stack

// queue

// hashtable, hashmap






