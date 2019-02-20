//
//  main.swift
//  Functions
//
//  Created by Alfredo Barragan on 10/22/18.
//  Copyright © 2018 Alfredo Barragan. All rights reserved.
//

import Foundation

// review arrays

//let cities = ["new york", "boston", "paris", "stockholm"]
//print("second city is \(cities[1])")
//
//
//
//
//// review dictionaries - key, value pairs
//
//var races = [String: String]()
//races["sweden"] = "stockholm marathon"
//races["France"] = "Paris marathon"
//
//print("there are \(races.count) races")
//
//// use optional binding to search for a race
//
//let canada = races["Canada"]
//
//if let canada = races["Canada"] {
//    print("found a race in canada")
//} else {
//    print("no race to be found")
//}
//
//
//
//
//// sets
//
//// declaring an empty Set
//var accountNumbers: Set<Int> = []
//accountNumbers.insert(5)
//accountNumbers.insert(5)
//accountNumbers.insert(5)
//print("there are \(accountNumbers.count) in accountNumbers")
//
//let accountArray = [5,5]
//let accountSet = Set(accountArray)
//
//print("there are \(accountSet.count) accounts in accountSet")
//
//// accessing an element in a set using ternary operator
//accountSet.contains(4) ? print("does contain") : print("not in set")
//
//
//// adding and removing elements from a set
//var fellows: Set<String> = ["Ashli", "Ian", "Stephanie", "Joshua", "Kathy", "Ian"]
//print("fellows set is \(fellows)")
//
//fellows.remove("Ashli")
//print(fellows)
//
//fellows.insert("Antonio")
//print(fellows)
//
//// sorting a set to guarantee elements structure
//print(fellows.sorted())
//
//
//
//let evenNumbers: Set<Int> = [2,4,6,8,10]
//let numbers1to1O: Set<Int> = [1,2,3,4,5,6,7,8,9,10]
//let allNumbers = evenNumbers.union(numbers1to1O)
//print(allNumbers.sorted())
//
//let intersectingNumbers = evenNumbers.intersection(numbers1to1O)
//print(intersectingNumbers)
//
////fundamental Set Operations
//
//let set1: Set<Int> = [1,2,3,4,5,6]
//let set2: Set<Int> = [4,2,10,11,33]
//
//let iOSFellows: Set<String> = ["Nathalie", "Alyson", "Ibraheem", "Ian", "Jian"]
//let pursuitstaff: Set<String> = ["Ian", "Alex", "Elle", "Bob"]
//
////finding symmetricDifference
//
//let symmetricDifference = set1.symmetricDifference(set2)
//print(symmetricDifference)
//
//
////find union of people
//let unionOfPeople = iOSFellows.union(pursuitstaff)
//print(unionOfPeople)
//
//// subtracting pursuitStaff from iOSFellows
//
//let substractingPeople = iOSFellows.subtracting(pursuitstaff)
//print(substractingPeople)
//
//
//
//
////var num = 1.0
////
////
////var heightOfTrees: Set<Double> = [161, 182, 161, 154, 176, 170, 167, 171, 170, 174]
////
////for elements in heightOfTrees {
////    num += elements
////}
////
////var averageOfHeights = num/Double(heightOfTrees.count)
////print(averageOfHeights)
////var check2: [String] = []
//var check: [String] = []
//let panagramCheck: Set<String> = ["a", "b", "c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z",]
//
//let randomString: Set<String> = ["The quick brown fox jumps over the lazy dog"]
//for elements in panagramCheck {
//    check.append(contentsOf: panagramCheck)
//}
//
//print(check)
////
////
////
//
//let sudoArray: [Int] = []
//let array1 = [1,2,2,4]
//let array2 = [1,1]
//let array3 = [2,2]
//
//for elements in array1 {


//for i in 1...30 {
//    print()
//}
//
//// functions
//func greeting(name: String) {
//    //scope
//    print("hello \(name)")
//}
//
//greeting(name: "Alfredo")
//
////define a function called greeting
//// the greeting function takes a parameter of type String
//// prints out "hello" and the person's name
//
//// function with 2 parameters or more
//// define a function that takes 2 values, adds their values together and returns the result
//
//func addTwoNumbers (num1: Int, num2: Int) -> Int {
//
//   let addition = num1 + num2
//    return addition
//}
//let result = addTwoNumbers(num1: 4, num2: 3)
//print("result of addition is \(result)")
//
//
////define a function that take a fellows name and cohort
////print results
//
//func printFellowInfo(name: String, cohort: Double) {
//    print("hi \(name), how is \(cohort) so far?")
//}
//    printFellowInfo(name: "Alyson", cohort: 5.3)
//
//
//
//func question1 (num1: Int, num2: Int) -> Int {
//    let addTwo = num1 + num2
//    let timesThree = addTwo * 3
//    return timesThree
//}
//
//
//
//func question2 (num1: Int, num2: Int, num3: Int) -> Int {
//    let addNumbers = num1 + num2 + num3
//    let averageOfNumbers = addNumbers * 3
//    return averageOfNumbers
//}
//
//
////func question3 (string1: String) -> String {
//
//
//
////passing an array
//// define a function that takes an array and returns an array of even numbers
//    func evenNumbers(numbers: [Int]) -> [Int] {
//        //make a mod
//        var evenArray = [Int]()
//        for num in numbers where num % 2 == 0 {
//            evenArray.append(num)
//        }
//        return evenArray
//}
//let myNumbers = [1,2,3,4,5,6,7,8]
//
//
//// invoke or call the evenNumber
//let results = evenNumbers(numbers: myNumbers)
//print("even numbers array is \(results)")
//
//
//// optional return type
//// write a function to convert a String to Int and double the value and return
//func convertToStringAnIntValue(inputString: String) -> Int? {
//    var value = Int(inputString)
//    if let valueIsInt = Int(inputString) {
//        value = valueIsInt * valueIsInt
//    }
//    return value
//}
//var myNum = "10"
//if let squareValue = convertToStringAnIntValue(inputString: myNum) {
//    print("squaring \(myNum) is \(squareValue)")
//}
//
//
//// default values
////feine a function that ask the user whether the beverage choice is coffee or tea?
//
//func coffeeOrTea(coffee: Bool, sugar: Int = 2) {
//    coffee ? print("your coffee has \(sugar)") : print("tea has \(sugar) sugars")
//}
//// make use of function / invoke / call ...
//coffeeOrTea(coffee:false)
//coffeeOrTea(coffee: true, sugar: 0)

//var placeholder = 0
//var sudoArray: [Int] = []
//let array1 = [1,2,2,4]
//let array2 = [1,1]
//let array3 = [2,2]
//
//for elements in array1 {
//    placeholder == elements
//    sudoArray.append(elements)
//
//}
//
//


let list1: Set = [1, 3, 4, 6, 2, 7, 9]
let list2: Set = [3, 7, 13, 10, 4]

let randomV = list1.intersection(list2)
print(randomV)

let randomW = list1.symmetricDifference(list2)
print(list2)

let randomY = list1.union(list2)
print(randomY)

let randomZ = (list2 -= list1)
print(randomZ)



















