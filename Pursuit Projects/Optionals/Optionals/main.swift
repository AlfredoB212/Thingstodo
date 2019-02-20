//
//  main.swift
//  Optionals
//
//  Created by Alfredo Barragan on 10/15/18.
//  Copyright © 2018 Alfredo Barragan. All rights reserved.
//

import Foundation
//// Optionals: How to declare an optional (put a "?" next to the variable)
//var temperature: String? = "It's gross outside"
//var freezingTemp: Bool? = true
//var tempInCelcius: Int? = 32


//var temperature: Int?
//
//temperature = 34
//if temperature != nil {
//    print(temperature)
//} else {
//    print("it's broken")
//}

//
//var tempThatIsNotAnOptional = 24
//temperature = tempThatIsNotAnOptional //Assigning an optional Int to equal a regular Int
//tempThatIsNotAnOptional = temperature!//Assigning a regular Int to an optional Int. Only works with the "!"
//
//
//var optionalTest: String? = "alan"
//print(optionalTest)
//
//var maincharacter: String?
//
//
//
//var maincharacter: String? = "tired"
//print(maincharacter!)
//
//Binding (safer way to check for nil or a value
//var myName: String? = "alfredo"
//
//if let name = myName {
//    print(name)
//} else {
//    print("you don't have a name")
//}
//
//var myPets: Int?
//var myAge: Int? = 25
//myPets = 2
//myAge = 6

//if let age = myAge {
//    if let pets = myPets {
//        print("you are \(age) years old, and you have \(pets) pets")
//    }
//
//} else {
//    print("You do not have an age")
//}



//if let age = myAge , let pets = myPets {
//    print(age, pets)
//
//
//
//
//var myName: String? = "Alfredo"
//var myMiddleName: String?
//print(myName)
//
//
//if let name = myName {
//
//
//    if let middleName = myMiddleName {
//        print("your name is \(name) \(middleName)")
//    }
//        print("your name is \(name)")
//}




//if let name = myName, let middleName = myMiddleName {
//    print("test")
//}
//
//let myName: String = "alfredo"
//
//print(myName)
//
//var myOtherName: String?
//print(myOtherName)
//
//var bookTitle: String = "The Hobbit"
//var secondTitle: String?
//var author: String? = "J.R.R. Tolkien"
//var coAuthor: String? = "Human"
//secondTitle = "There and Back Again"
//
//if var realCoAuthor = coAuthor, var realAuthor = author {
//    print("there are two authors: \(author), \(coAuthor)")
//} else {
//    print(author)

//
//    let firstName: String? = "Alfredo"
//    let lastName: String? = "Barragan"
//
//
//
//
//
//    if let first = firstName var last = lastName, first == "alfredo" {
//        print(first, last)
//    }

    
//var myArray = [7,3,4,5,8]


//for _ in 0...5 {
//    guard let lastThing = myArray.popLast() else {break}
//    print(lastThing)
//}
//
//var myTest: String? = "hey"

//for index in 0...5 {
//    guard index < 5 else {break}
//    guard let test = myTest else {break}
//    print(myArray[index])
//}
//

 //how to print arrays with nil in them using "Guard" and "Break" and "Continue". "Break" ends the loop, "Continue" skips one iteration of the loop and continues the loop.
//var myArrayWithNils = [2,3,4,nil,2,5,nil]
//
//for index in 0...myArrayWithNils.count - 1 {
//    guard let element = myArrayWithNils[index] else {continue}
//    print(element)
//}

    
    
//var firstName: String = "Johnny"
//var middleName: String?
//
//var lastName: String = "Stone"
//
//var fullName = (firstName, middleName, lastName)
//print(fullName)




//let myIntString = "35"
//var myInt = 15
//
//let a: Int? = Int(myIntString)
//
//print(a! + myInt)

//var scores: (Int?, Int?, Int?)?
//
//var testCaseOne: (Int?, Int?, Int?)? = (4,nil,7)
//
//var testCaseTwo: (Int?, Int?, Int?)? = (nil,nil,9)
//
//var testCaseThree: (Int?, Int?, Int?)? = (5, 10, 24)
//
//var sum = 0
//
//if let safeTuple = testCaseOne {
//
//    if let firstProperty = safeTuple.0 {
//        sum += firstProperty
//    }
//    if let secondProperty = safeTuple.1 {
//        sum += secondProperty
//    }
//    if let thirdProperty = safeTuple.2 {
//        sum += thirdProperty
//    }
//}
//
//print(sum)
//
//
//if let safeTuple2 = testCaseTwo {
//
//    if let firstProperty1 = safeTuple2.0 {
//        sum += firstProperty1
//    }
//    if let secondProperty1 = safeTuple2.1 {
//        sum += secondProperty1
//    }
//    if let thirdProperty1 = safeTuple2.2 {
//        sum += thirdProperty1
//    }
//}
//
//print(sum)
//
//
//
//if let safeTuple = testCaseThree {
//
//    if let firstProperty2 = safeTuple.0 {
//        sum += firstProperty2
//    }
//    if let secondProperty2 = safeTuple.1 {
//        sum += secondProperty2
//    }
//    if let thirdProperty2 = safeTuple.2 {
//        sum += thirdProperty2
//    }
//}
//
//print(sum)

//var arrayExample: [Int?]? = [2,3,nil,4,nil]
//
//if let safeArray = arrayExample {
//    for number in safeArray {
//        guard let safeNumber = number else {continue}
//        print(safeNumber)
//    }
//}
//



//var boolExample: Bool? = true
//
//print(boolExample!)



//var tuple: (Int, Int)?
//if Bool.random() {
//    tuple = (5, 3)
//}
//print(tuple)

//let myInt: Int?
//if Bool.random() {
//    myInt = 5 * 2
//    print(myInt)
//} else {
//    print("error message")
//}

//var myDouble: Double?
//let doubleTwo: Double = 5
//if Bool.random() {
//    myDouble = 12 * doubleTwo
//    print(myDouble)
//} else {
//    print("error message")
//}

//
//// Checking for spaces
//let myString = "this is my test for yall"
//
//for char in myString {
//    if char == " " {
//        print("I found a space!!")
//    }
//}

    
//var isTheGreatest: Bool?
//if Bool.random() {
//    isTheGreatest = true
//    print(isTheGreatest)
//} else {
//    isTheGreatest = false
//    print(isTheGreatest)
//}

//var myTuple: (Int?, Int?, Int?, Int?)
//
//if Bool.random() {
//    myTuple.0 = 5
//    myTuple.2 = 14
//    print(myTuple.0! + myTuple.2!)
//} else {
//    myTuple.1 = 9
//    myTuple.3 = 10
//    print(myTuple.1! + myTuple.3!)
//}




//var numberOfPeople: Int?
//if Bool.random() {
//    if numberOfPeople! % 2 == 0 {
//        numberOfPeople = 108
//        print(numberOfPeople)
//    }
//}


//var i = 0
//var someNumbers: [Int?] = []
//
//for i in 0..<20 {
//    someNumbers.append(Bool.random() ? i : nil)
//    }
//var product = 1
//
//for numbers in someNumbers {
//    if numbers != nil {
//        product *= numbers!
//    }
//}
//print(product)

//let poorlyFormattedCityNames: [String?] = ["new york", "BOSTON", nil, "chicago", nil, "los angeles", nil, "Dallas",]
//
//for names in poorlyFormattedCityNames {
//    var names = ""
//    if names != nil {
//        names.uppercased()
//    }
//}
//
//print(names)


// Explaining readLine
//let userResponse = readLine()
//let userAge = Int(userResponse!) // changes userResponse into an Int
////Using the ! is called Force Unwrapping
//
//let myArray = [10,1,0]
//
//
//// Type Inferrence
//let people = ["Alyson", "Ashley"] //Array of Strings
//
//// Best practices
//
//if let userResponse = readLine() {
//    print(userResponse)
//} else {
//    print("Error message")
//}
//
//
//
//if let userAge = Int(userResponse!) {
//if userAge >= 21 {
//    print("Drink up")
//    }


//var citiesDict = [String:String]()
//
//citiesDict = [
//    "Usa" : "WashingtonDC",
//    "Japan" : "Toyko",
//    "China" : "Bejing" ]
//
//citiesDict["Russia"] = "Moscow"
//citiesDict["Brazil"] = "Brasila"
//citiesDict["Rusia"] = "La capital de Rusia"
//citiesDict["Japon"] = "La capital de Japon"


//how to add values
//var someDict:[String:Int] = ["One": 1, "Two": 4, "Three": 9, "Four": 16, "Five": 25]
//
//var sum = 0
//if let a = someDict["Three"] {
//    if let b = someDict["Five"] {
//        print(a + b)
//    }
//}
//
//someDict["Six"] = 20
//someDict["Seven"] = 10
//
//print(someDict)
//
//var product = 1
//for productOfValues in someDict.values {
//    product *= productOfValues
//}
//someDict["productUpToSeven"] = product
//print(product)
//
//
//var sum2 = 0
//for sumOfValues in someDict.values.prefix(upTo: someDict["Seven", default:]) {
//    sum2 += sumOfValues
//    }
//print(sum2)


//someDict["productUpToSeven"] =



var code = [
    "a" : "b",
    "b" : "c",
    "c" : "d",
    "d" : "e",
    "e" : "f",
    "f" : "g",
    "g" : "h",
    "h" : "i",
    "i" : "j",
    "j" : "k",
    "k" : "l",
    "l" : "m",
    "m" : "n",
    "n" : "o",
    "o" : "p",
    "p" : "q",
    "q" : "r",
    "r" : "s",
    "s" : "t",
    "t" : "u",
    "u" : "v",
    "v" : "w",
    "w" : "x",
    "x" : "y",
    "y" : "z",
    "z" : "a"
]

var message = "hello world"











































































