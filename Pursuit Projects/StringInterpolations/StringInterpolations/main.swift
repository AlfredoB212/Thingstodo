//
//  main.swift
//  StringInterpolations
//
//  Created by Alfredo Barragan on 10/9/18.
//  Copyright © 2018 Alfredo Barragan. All rights reserved.
//

import Foundation


////concatentation
//let firstName = "John"
//let lastName = "Appleseed"
//
////use a variable full name to concaternate first name and second name
//let fullName = firstName + " " + lastName
//print(fullName)
//
//
//
//
//////string interpolation
////let year = 2018
//////use string interpolation to print out the year 2018
////
////print("the current year is \(year)")
////
//////e.g string literal
////
////
////let name1 = "Eli"
//
//
//
//// initialization - set a default value
//var date: String = "October 9th, 2018"
//print(date)
//
//
////test for empty string
//let emptyString = ""
//// using the ternary operator ?: a ? b : C
//emptyString.isEmpty ? print("is empty") : print("NOT Empty")
//
//
//// comparing strings
//let string1 = "Pursuit"
//let string2 = "C4"
//string1 != string2 ? print("you in both cohorts") : print("pursuit to the dream")
//
////string mutability
//let homeplanet = "earth" // immutable - cannot change
//
//var codingExperience = 0 // mutable - means can change
//codingExperience = 10
//
//// casting
//let stringExperience = String(codingExperience)
//print("I have \(stringExperience) in coding")
//
//
////value type- stored in memory
//let movie = "Toy Story"
//var nextMovie = movie
//nextMovie += "Two" // if nextmovie was a (class type) it would alter mnovie's value
//print("movie is \(movie) and the next movie is | (nextMovie)")
//
////interating through the string
//let iOS = "iOS is awesome!!!!!"
//for letter in iOS {
//    print(letter, terminator: "") // terminator makes sure the string prints on the same line
//}
//
//
//
//// count characters in a String
//print("there are \(iOS.count) characters in the string")
//
//
//
//
//// drop the last character in a string
//print("dropping the last character \(iOS.dropLast)()")
//
//
//
//
////reverse string
//var greeting = "hello"
//var reverse = String(greeting.reversed())
//
//print("reverse greeting is \(reverse)")
//
//
//
//
//
//
//// check if a string is a palindrome
//let aString = "anutforajaroftuna"
//
//let aPalindromeString = String(aString.reversed())
//if aPalindromeString == aString {
//    print("is a palindrome")
//} else {
//    print("Not a palindrome")
//}
//
//
//
//
//
////comparing unicode scalar vs string literal
//let unicodeSpace = "\u{20}"
//let stringLiteralSpace = " "
//unicodeSpace == stringLiteralSpace ? print("equal") : print("Not equal")
//
//
//// drop the last character in a string
//print("dropping the last character \(iOS.dropLast())")
//print("will it drop the last character \(iOS))")
//
//
//print("") // creates a new line
//
//// hasPrefix
//let company = "Pursuit"
//if company.hasPrefix("Pur") {
//    print("Welcome to Pursuit")
//} else {
//    print("You should apply in 2019")
//}
//
//
//
//// terminator and separator
//
//let oscarNominated = "A beautiful mind"
//let clap = "👏"
//print("an oscar nominated movie \(oscarNominated)", "test",  separator: "\(clap)")
//
//
//
//
//
//let snake = "\u{1F40D}"
//for _ in 0...10 {
//    print(snake,terminator: "")
//
//}
//
//
//
//
//
//// combining scalars
//let acute = "\u{61}\u{301}"
//print("combining scalars:  \(acute)")
//
//
//
//// accessing characters in a string is different from array indexing
//let language = "swift"
//let firstCharacter = language[language.startIndex]
//print("the first character in \(language) is \(firstCharacter)")
//// string.Index != Int
//
//
//
//
//
//
//
//
//
//
////third character
//let thirdCharacterIndex = language.index(language.startIndex, offsetBy: 2)
//print("third character is \(language[thirdCharacterIndex])")
//
//
//
////print out last index
//let lastCharacterIndex = language.index(before: language.endIndex)
//print("last character is \(language[lastCharacterIndex])")
//
//// create a range to print a substring
//let subStringRange = thirdCharacterIndex...lastCharacterIndex
//print("substring taken from \(language) is \(language[subStringRange])")
//
//
//
//// multiline string
//
//let multiline = """
//a
//b
//c
//dlskfj
//dfads
//"""
//print(multiline)
//
//
//
//
//
//
//
//
//
////Question 1
//let word = "Fire blasters"
//let firstCharacter2 = word[word.startIndex]
//print("the first chraracter in \(word) is \(firstCharacter2)")
//
////Question 2
//
//let word2 = "Hello There"
//let sixthCharacterIndex = word2.index(word2.startIndex, offsetBy: 5)
//print("the sixth character is \(word2[sixthCharacterIndex])")
//
////Question 3
//let word3 = "Goodbye There"
//let fourthCharacterIndex = word3.index(word3.startIndex, offsetBy: 3)
//print("the fourth character is \(word3[fourthCharacterIndex])")
//
////Question 4
//let word4 = "adiós"
//let lastCharacterIndex2 = word4.index(before: word4.endIndex)
//let secondToLastCharcter = word4.index(before: lastCharacterIndex2)
//print("the second to last charcter is \(word4[secondToLastCharcter])")
//
//
//
//let string11 = Character("s")
//
//
//
//
//
//let randomInGreek = "\u{370}\u{395}\u{39B}\u{39B}\u{3BF} \u{7E5}\u{3BF}\u{3C1}\u{39B}\u{3B4}"
//print(randomInGreek)
//
////let myName = "\u{41}\u{6C}\u{66}\u{72}\u{65}\u{64}\u{6F}"
////print(myName)
//
//
//
////Question 11
//
//let whatever = "complicated"
//switch whatever {
//case whatever where whatever.count % 2 == 0:
//    for letter in whatever {
//        print(letter, terminator:"")
//    }
//default:
//    for index in 0...whatever.count - 1 {
//        if index % 2 != 0 {
//            let currentIndex = whatever.index(whatever.startIndex, offsetBy: index)
//            print(whatever[currentIndex], terminator:"")
//        }
//    }
//    print("odd")
//}
//



var problem = "split this string into words and print them on separate lines"























































