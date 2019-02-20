//
//  main.swift
//  Unit1FinalReview
//
//  Created by Alfredo Barragan on 11/1/18.
//  Copyright © 2018 Alfredo Barragan. All rights reserved.
//

import Foundation

////Review For Test
//
//
//
////types, variables, logic operations
//// %, <, >=, let, var, ! (unary operator) takes one operand
//// Int, Bool, String, Double
//
//// Control Flow
//// if/else, while, repeat-while
//
//// using while to print numbers 1 through 10
//// checks condition before entering the scope of the while loop
////var num = 0
////while num <= 10 {
////    print(num)
////    num += 1
////}
////
////// terminator overrides default end line "\n" from print() function
////// seperator add specific given string between strings
////
////
////var isReviewing = true
////while isReviewing {
////    print("is reviewing")
////    isReviewing = false
////}
////
//////print("please enter your name: ")
//////var willContinue = "no"
//////if let _ = readLine() {
//////   repeat {
//////    print("Do you want to cinute? yes or no")
//////    if let shouldCOntinue = readLine() {
//////         willContinue = shouldContinue = "yes" ? "yes" : "no"
//////    }
//////} while willContinue == "yes"
//////}
////
////
////// strings
////var name = "Diego"
////// DRY = DON'T REPEAT YOURSELF
////
////name.append(contentsOf: " Estrella")
////
////
////
////// Index
////
////let sentence = "hellow, swift, how are you today?"
////let trimmedString = sentence.trimmingCharacters(in: CharacterSet.whitespaces)
////let components = sentence.components(separatedBy: " ")
////
////
////let noSpacesString = trimmedString.replacingOccurrences(of: " ", with: "😱")
////print("noSpaceString is \(noSpacesString)")
////
////let punctuatedString = "Hello, Swift!, how much I love thee? alot!!"
////let nonPunctuatedString = punctuatedString.components(separatedBy: CharacterSet.punctuationCharacters)
////
////print("nonPuntuatedString is \(nonPunctuatedString)")
////
////
////
//////Arrays
////
/////*
//// collection of ordered elements
//// */
////// creating an Array
////
////let cities = ["stockholm", "tokyo", "berlin", "boston"]
////
////// loop through an array
////
////for city in cities {
////    print(city)
////}
////
////for city in cities {
////    print(city.capitalized)
////}
////
////
////// using filter return tokyo
////
////var filteredCity = cities.filter{$0 == "tokyo"}
////
////
////let numbers = [23,7,10,5,5,6,4]
////// using ____ higher order function return the result of adding all the elements of numbers and print
////
////var sum = numbers.reduce(0,+)
////print(sum)
////
////
////print(numbers.map{$0 * $0})
//
//
//// Optionals
//
//// which ways can we safely (swiftly) unwrap optionals
//
////let firstName: String? = "Alyson"
////
////if let name = firstName {
////    if firstName = name {
////    print(firstName)
////}
////}
//
//
////using guard to safely unwrap, only used in functions
//
//func validPassword(password: String) {
//    guard let password = Int(password) else {
//        print("not a valid interger"); return
//    }
//
//print("Entry granted with password \(password)")
//}
//let password = "12345"
//
//validPassword(password: password)
//
//
//
//
//// enums
//
//
//
//// structs
//
//
//// closures
//
//// create map and test
//
//func customMap (array: [Int], closure: (Int) -> Int) -> [Int] {
//    var newArray = [Int]()
//    for num in array {
//        newArray.append(closure(num))
//    }
//    return newArray
//}
//
////print(customMap(array: [1,2,3])) {$0 + 1};)
//
//
//// classes
//
//
//
////
////enum MetroLine {
////    case green
////    case red
////    case orange
////    case purple
////    case yellow
////    case grey
////    case brown
////
////}
////
////
////
////// creat an instance of a metroline
////var greenLine = MetroLine.green
////
////// propertites
////
//////func getMetroLineInfo( metroLine: MetroLine) {
//////switch MetroLine {
//////case .green:
//////    print("green line is the \(trainLine)")
//////case .red:
//////    print("green line is the \(trainLine)")
//////case .orange:
//////    print("orange line is the \(trainLine)"
//////case .purple(let trainLine):
//////    print("purple line is the \(trainLine)")
//////case .yellow:
//////    print("yellow line is the \(trainLine)")
//////case .grey:
//////    print("grey line is the \(trainLine)")
//////case .brown:
//////
//////    }
//////}
//////getMetroLineInfo(metroLine: MetroLine.purple(7))
////
////
////    print("brown line is the \(trainLine)")"
////
////}
////
////
////
////
////// initializers
////
////
////
////
//
//
//
//
//enum Gender: CaseIterable {
//    case male, female
//}
//print("gender has \(Gender.allCases.count) options")
//
//// objects have properties and methos - Object Oriented Programming
//
//struct Computer { // create a Computer Object
//    // properties
//    var hardDriveStorage: Double
//    var ram: Int
//    var processor: Double
//    var brand: String
//    // methods
//    func goOnline() {
//        print("google search.......")
//    }
//
//    func readLine(input: String?) {
//        if let trueInput = input {
//            print("user entered: \(trueInput)")
//        }
//    }
//}
//
//
//
//
//
//// crete an instance of Computer()
//let mac = Computer(hardDriveStorage: 333, ram: 16, processor: 2.4, brand: "Apple Computer")
//mac.goOnline()
//mac.readLine(input: "Kill me")
//
//// create a pc from mac
//var pc = mac
//pc.brand = "Microsoft"
//
//
//class Podcast { // create a Podcast Object
//    var name: String
//    var author: String
//    var feedURL: String
//    var createdDate: String
//    var duration: Double
//    var genre: String
//
//
//    init(author: String, feedURL: String, createdDate: String, duration: Double, genre: String, name: String) {
//        self.author = author
//        self.feedURL = feedURL
//        self.createdDate = createdDate
//        self .duration = duration
//        self .genre = genre
//        self.name = name
//    }
//
//}
//
//let swiftOverCoffee = Podcast(author: "Paul Hudson", feedURL: "http....", createdDate: "Sept 7, 2018", duration: 30.0, genre: "Technology")
//
//let swiftBySwiftSundell = swiftOverCoffee
//swiftOverCoffee.author = "John Sundell"
//
//func getPodcastInfo() {
//    print("The author of \(name) is \(author)")
//}

import Foundation

/////////////////////////////////////////////////////////////////////
// Unit 1 Final Review
/////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////
// types, variables, logic operations
// %, <, >=, let, var, ! (unary operator) takes one operand
// Int, Bool, String, Double
/////////////////////////////////////////////////////////////////////


/////////////////////////////////////////////////////////////////////
// control flow
// if/else, while, repeat-while
/////////////////////////////////////////////////////////////////////


// using while to print numbers 1 through 10
// checks condition before entering the scope of the while loop
var num = 1
while num <= 10 {
    // terminator overrides default end line "\n" from print() function
    // separator add specific given string between strings
    print("number is", "\(num)", separator:"|||")
    num += 1
}

var isReviewing = true
while isReviewing {
    print("is reviewing")
    isReviewing = false
}

// repeat-while executes at LEAST once
//print("Please enter your name: ")
//var willContinue = "no"
//if let _ = readLine() {
//  repeat {
//    print("Do you want to continue? yes or no")
//    if let shouldContinue = readLine() {
//      willContinue = shouldContinue == "yes" ? "yes" : "no"
//    }
//  } while willContinue == "yes"
//}
//print("end of repeat-while")


/////////////////////////////////////////////////////////////////////
// loops - for-in
for num in 5...15 where num % 2 == 0 {
    print(num)
}
/////////////////////////////////////////////////////////////////////


/////////////////////////////////////////////////////////////////////
// strings - https://developer.apple.com/documentation/swift/string
var name = "Diego" // create a string literal
// DRY - (D)o not (R)epeat (Y)ourself
//name += " " + "Estrella"
name.append(contentsOf: " Estrella")
print(name)

print("")

let sentence = " hello swift how are you today? "
print("sentence before trim is \(sentence)")
let trimmedString = sentence.trimmingCharacters(in: CharacterSet.whitespaces)
print("trimmedString is \(trimmedString)")
let components = sentence.components(separatedBy: " ")

let noSpacesString = trimmedString.replacingOccurrences(of: " ", with: "💀")
print("noSpaceString is \(noSpacesString)")

let punctuatedString = "Hello, Swift!, how much I love thee? alot!!"
let nonPuntuatedString = punctuatedString.components(separatedBy: CharacterSet.punctuationCharacters)
print("nonPuntuatedString is \(nonPuntuatedString)")
/////////////////////////////////////////////////////////////////////


/////////////////////////////////////////////////////////////////////
// Arrays
/////////////////////////////////////////////////////////////////////
/*
 collection of ordered elements
 */
// create an array
let cities = ["stockholm", "tokyo", "berlin", "boston"]

// loop through array
for city in cities {
    print(city.capitalized)
}

// using filter return tokyo
var city = cities.filter {$0 == "tokyo"}
print(city)

let numbers = [23, 7, 10, 10, 5, 5, 6, 4]

// using reduce higher order function return the result of adding all the
// elements of numbers and print
var sum = numbers.reduce(0, +)
print(sum)

// using ______ higher order function square each element in numbers and print the result
print(numbers.map {$0 * $0})

// remove elements from an array
// search
// modified


/////////////////////////////////////////////////////////////////////
// Optionals
/////////////////////////////////////////////////////////////////////

// which ways can we safely (swiftly) unwrap optionals

let firstName: String? = "Alyson"

// optional binding
if let name = firstName{
    print(name)
}

let number: String = "10"

// write a function that takes in an String and return a Bool if the String
// is a valid integer
func ifStringIsReal(a: String) -> Bool {
    var isString = false
    if let _ = Int(a) {
        isString = true
    }
    return isString
}
print(ifStringIsReal(a: number))

// unwrap a Double? and default to 0.0 if value is nil
var cents: Double? // cents
let unwrappedCents = cents ?? 0.0 // nil coelescing
print("cents value is \(unwrappedCents)")

// using guard to safely unwrap, only used in functions
func validPassword(password: String) -> String {
    // needs to be a valid integer
    guard let password = Int(password) else {
        return "not a valid integer" // gets executed in password in nil
    }
    print("Entry granted with password \(password)")
    return "logged in successfully"
}
let password = "12345i"
let result = validPassword(password: password)
print(result)


/////////////////////////////////////////////////////////////////////
// dictionaries
/////////////////////////////////////////////////////////////////////


/////////////////////////////////////////////////////////////////////
// sets
/////////////////////////////////////////////////////////////////////



/////////////////////////////////////////////////////////////////////
// functions
/////////////////////////////////////////////////////////////////////


///////////////////////////////////////////////////////////////////////
// closures
/////////////////////////////////////////////////////////////////////

// create map and test
func customMap (arr: [Int], closure: (Int) -> Int) -> [Int] {
    var newArr = [Int]()
    for num in arr {
        newArr.append(closure(num))
    }
    return newArr
}

print(customMap(arr: [1, 2, 3]) {$0 + 1})

/////////////////////////////////////////////////////////////////////
// enums - a finite collection of similar value
/////////////////////////////////////////////////////////////////////

enum Gender: CaseIterable { // conformed to the CaseIterable protocol
    case male, female
}
print("gender has \(Gender.allCases.count) options")

// associative values - associate a value(s) with a case on the enum
// e.g case brown(Character)

// comment
/*
 */

enum MetroLine: CaseIterable {
    case green(Int, Int, Int) // 4, 5, 6 -> three associative values, types could be different
    case red(Int) // 1, 2, 3
    case orange(Character) // B, D, F, M
    case purple(Int) // 7
    case yellow(Character) // N, W, R, Q
    case grey(Character) // L, S
    case brown(Character) // J, Z
    case blue(Character) // E, A, C
    
    // give all cases default associative values
    static var allCases: [MetroLine] = [.green(4,5,6), .red(2), .orange("B"), .purple(7), .yellow("Q"), .grey("L"), .brown("J"), .blue("A")]
}

// iterate through all the metrolines
for trainLine in MetroLine.allCases {
    print("train line is \(trainLine)") // print with default associative value
}

// create an instance of a MetroLine
let greenLine = MetroLine.green

// switch on enum - refactored to a function
func getMetroLineInfo(metroLine: MetroLine) {
    switch metroLine {
    case .green(let line1, let line2, let line3):
        print("green line has the following trains: \(line1), \(line2) and \(line3)")
    case .red:
        print("red line")
    case .orange:
        print("orange line")
    case .purple(let trainLine):
        print("purple line is the \(trainLine) train")
    case .yellow:
        print("yellow line")
    case .grey:
        print("grey line")
    case .brown:
        print("brown line")
    case .blue:
        print("blue line")
    }
}

// raw value

// call getMetroLine() function
getMetroLineInfo(metroLine: MetroLine.purple(7))

getMetroLineInfo(metroLine: MetroLine.green(4, 5, 6))

// exercise - call 2 more train lines on the getMetroLineInfo() function
// e.g yellow and blue




/////////////////////////////////////////////////////////////////////
// structs
/////////////////////////////////////////////////////////////////////

// objects have properties and methods - Object Oriented Programming

struct Computer { // create a Computer object - structs are value-types
    // properties
    var hardDriveStorage: Double // storage capacity
    var ram: Int // storage
    var processor: Double // e.g 2.4 quad core
    var brand: String // e.g Apple of our hearts
    
    // methods
    func goOnline() {
        print("google search.......")
    }
    
    func readLine(input: String?) {
        if let userInput = input {
            print("User entered: \(userInput)")
        }
    }
    
    func getDescription() {
        print("\(brand) has \(hardDriveStorage) hdd storage and \(ram) gigs memory")
    }
}

// create an instance of Computer()
var mac = Computer(hardDriveStorage: 256, ram: 16, processor: 2.4, brand: "Apple Computer")
mac.getDescription()
mac.goOnline()
mac.readLine(input: "Hello, world!")

// create a pc from mac
var pc = mac
pc.brand = "Microsoft Coorperation"
mac.getDescription() // copy, value-type - pc does not mutate mac's copy

/////////////////////////////////////////////////////////////////////
// classes
/////////////////////////////////////////////////////////////////////

class Podcast { // create a Podcast object
    // stored properties:
    var name: String
    var author: String
    var feedURL: String
    var createdDate: String
    var duration: Double // seconds
    var genre: String // technology, sports, health.......
    
    // other property types: computed property, property observers, type property
    
    init(name: String, author: String, feedURL: String,
         createdDate: String, duration: Double, genre: String) {
        self.name = name
        self.author = author
        self.feedURL = feedURL
        self.createdDate = createdDate
        self.duration = duration
        self.genre = genre
    }
    
    // methods
    func getPodcastInfo() {
        print("The author of \(name) is \(author)")
    }
}

// create and instance of Podcast() - classes are reference types
let swiftOverCoffee = Podcast(name: "Swift Over Coffee",
                              author: "Paul Hudson",
                              feedURL: "http:......",
                              createdDate: "September 7, 2018",
                              duration: 30.0,
                              genre: "Technology")
swiftOverCoffee.getPodcastInfo()
let swiftBySwiftSundell = swiftOverCoffee
swiftOverCoffee.author = "John Sundell"
swiftOverCoffee.getPodcastInfo()

/////////////////////////////////////////////////////////////////////
// properties
/////////////////////////////////////////////////////////////////////



/////////////////////////////////////////////////////////////////////
// initialization
/////////////////////////////////////////////////////////////////////

