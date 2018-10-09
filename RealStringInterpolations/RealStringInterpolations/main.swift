//
//  main.swift
//  StringInterpolations
//
//  Created by Alfredo Barragan on 10/9/18.
//  Copyright © 2018 Alfredo Barragan. All rights reserved.
//

import Foundation


//concatentation
let firstName = "John"
let lastName = "Appleseed"

//use a variable full name to concaternate first name and second name
let fullName = firstName + " " + lastName
print(fullName)




////string interpolation
//let year = 2018
////use string interpolation to print out the year 2018
//
//print("the current year is \(year)")
//
////e.g string literal
//
//
//let name1 = "Eli"



// initialization - set a default value
var date: String = "October 9th, 2018"
print(date)


//test for empty string
let emptyString = ""
// using the ternary operator ?: a ? b : C
emptyString.isEmpty ? print("is empty") : print("NOT Empty")


// comparing strings
let string1 = "Pursuit"
let string2 = "C4"
string1 != string2 ? print("you in both cohorts") : print("pursuit to the dream")

//string mutability
let homeplanet = "earth" // immutable - cannot change

var codingExperience = 0 // mutable - means can change
codingExperience = 10

// casting
let stringExperience = String(codingExperience)
print("I have \(stringExperience) in coding")


//value type- stored in memory
let movie = "Toy Story"
var nextMovie = movie
nextMovie += "Two" // if nextmovie was a (class type) it would alter mnovie's value
print("movie is \(movie) and the next movie is | (nextMovie)")

//interating through the string
let iOS = "iOS is awesome!!!!!"
for letter in iOS {
    print(letter, terminator: "") // terminator makes sure the string prints on the same line
}



// count characters in a String
print("there are \(iOS.count) characters in the string")




// drop the last character in a string
print("dropping the last character \(iOS.dropLast)()")




//reverse string
var greeting = "hello"
var reverse = String(greeting.reversed())

print("reverse greeting is \(reverse)")






// check if a string is a palindrome
let testPalindromeStr = "racecar"
let isPalindrome = String(testPalindromeStr.reversed())
if testPalindromeStr == isPalindrome {
    print("is a palindrome")
} else {
    print("Not a palindrome")
}





//comparing unicode scalar vs string literal
let unicodeSpace = "\u{20}"
let stringLiteralSpace = " "
unicodeSpace == stringLiteralSpace ? print("equal") : print("Not equal")






let snake = "\u{1F40D}"
for _ in 0...10 {
    print(snake,terminator: "")
}
