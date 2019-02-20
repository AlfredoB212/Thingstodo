//
//  main.swift
//  OpenBookExam
//
//  Created by Alfredo Barragan on 10/19/18.
//  Copyright © 2018 Alfredo Barragan. All rights reserved.
//

import Foundation

//var num = 0
//
//while num <= 10 {
//    print(num)
//
//    num += 1
//}
//var number = 0
//
//
//for sum in 0...10 {
//    number += sum
//    print(number)
//}
//var numberOfVowels = 0
//let aSentence = "Whatever you are, be a good one."
//
//for elements in aSentence {
//    if elements == "a" || elements == "e" || elements == "i" || elements == "o" || elements == "u" {
//        numberOfVowels += 1
//    }
//}
//print(numberOfVowels)
//
//
//
//
//let score = 85
//
//if score <= 100 {
//    switch score {
//    case 100:
//        print("A+")
//    case 90...99:
//        print("A")
//    case 80...89:
//        print("B")
//    case 70...79:
//        print("C")
//    case 65...69:
//        print("D")
//    case 0...65:
//        print("F")
//    default:
//        print("")
//    }
//}
//
//
//var anInt: Int?
//anInt = 7
//
//if let number = anInt {
//
//    print(number + 10)
//
//} else {
//    print("This is not a number")
//}
//
//
//let animals = ["zebra", "dog", "bat", "octopus"] // should print "octopus"
//var numberOfElements = 0
//
//print(animals[0].count)
//
//if animals[2].count <= animals[3].count {
//    print("progress")
//}
//
//print(animals[0])
//
//for elements in animals[0]{
//    print(elements)
//}
//
//var max = animals.max()
//
//print(max)
//var newString3 = ""
//var newString2 = ""
//var newString1 = ""
//let array1 = ["Hello", "there,"]
//let array2 = ["how", "are", "you"]
//let array3 = ["let's", "code", "!"]
//var newArray1 = array1
//
//var allArrays = [array1 + array2 + array3]
//
//let sentence = newString1 + newString2 + newString3
//
//
//for elements in array1 {
//    print(elements)
//    newString1 == elements
//}
////print(newString1)
//
//for elements in array2 {
//    print(elements)
//    newString2 == elements
//}
////print(newString2)
//
//for elements in array3 {
//    print(elements)
//    newString3 == elements
//}
////print(newString3)
//
//
//print(sentence, terminator: "")
//
//var sentence = " "
//sentence = ""
//let haikuWords = ["The", "snow", "is", "melting", "and", "the", "village",
//                  "is", "flooded", "with", "children"]
//
//for elements in haikuWords {
//    sentence.append(elements)
//    sentence.append(" ")
//}
//print(sentence)
//
//
//var actualElements = " "
////actualElements = Int(actualElements)
//let anotherHaiku = ["Even", "with", "insects", "some", "can",
//                    "sing", "some",  "cannot"]
//var emptyArray: [String] = []
//var numberOfElements = 0
//for elements in anotherHaiku {
//    if numberOfElements >= 4 {
//
//
//        actualElements.append(elements)
//        actualElements.append(" ")
//    }
//}
//print(actualElements)

//let animals = ["zebra","dog", "bat", "octopus"] // should print "octopus"
////
////for elements in animals {
////    print(
////}
//
////var num = 0
////    for animal in animals {
////            if animal.count > num {
////                num = animal.count
////                print(animal)
////    }
////}
//
//
//let anotherHaiku = ["Even", "with", "insects", "some", "can",
//                    "sing", "some",  "cannot"]
//
//
//for elements in anotherHaiku {
//
//}
//
//
//
//
//
//
//
//



//var actualElements = " "
//
//let anotherHaiku = ["Even", "with", "insects", "some", "can",
//                    "sing", "some",  "cannot"]
//var emptyArray: [String] = []
//var numberOfElements = 0
//for elements in anotherHaiku {
//    if numberOfElements >= 4 {
//
//
//        actualElements.append(elements)
//        actualElements.append(" ")
//    }
//}
//print(actualElements)



class HangmanGame {
    
    /**************************************************/
    /* Private properties                             */
    /**************************************************/
    
    // Number of guesses that player got wrong
    // Game ends when this value reaches 6
    var numberOfWrongGuesses = 0
    
    // All guesses made by the player
    // Initially an empty array of characters
    var allGuesses = Character[]()
    
    // The word input as the answer
    // Length is countElements(answer)
    var answer = ""
    
    // The letter entered by the player
    var guess: Character = " "
    
    // Whether or not game is in progress
    var inProgress = true
    
    
    /**************************************************/
    /* Private methods                                */
    /**************************************************/
    
    // Prints 30 lines to clear the screen
    func clearScreen() {
        for i in 1..30 {
            println()
        }
    }
    
    // Returns a string of all the right guesses made by the player
    // Prints "_" if the user has not guessed the letter in the answer
    func getRightGuesses() -> String {
        var rightGuesses = ""
        for char in answer {
            if (char == " ") {
                rightGuesses += "  "
            } else {
                var charGuessed = false
                for guess in allGuesses {
                    if (char == guess) {
                        charGuessed = true
                    }
                }
                if charGuessed {
                    rightGuesses += char + " "
                } else {
                    rightGuesses += "_ "
                }
            }
        }
        return rightGuesses
    }
    
    // Prints all the letters guessed by the player
    func printUsedLetters() {
        if (allGuesses.isEmpty) {
            println("nothing")
        } else {
            for guess in allGuesses {
                print(guess + " ")
            }
            println()
        }
    }
    
    // Prompts the user for the answer
    // Stores user's answer in .answer
    func askAnswer() {
        println("What is the answer? ")
        answer = trim(input().uppercaseString)
        clearScreen()
    }
    
    // Prompts the user for a guess
    // Stores user's guess in .guess
    func askLetter() {
        var invalidGuess = true
        println("What is your guess? ")
        while invalidGuess {
            guess = Character(input().uppercaseString.substringToIndex(1))
            invalidGuess = false
            if (guess == " " || guess == "\n") {
                invalidGuess = true
            } else {
                for char in allGuesses {
                    if (guess == char) {
                        invalidGuess = true
                    }
                }
            }
            if invalidGuess {
                print("Please enter a letter you have not tried before: ")
            }
        }
    }
    
    // Checks to see if the guessed letter is a part of the answer
    // Increments .numberOfWrongGuesses if not
    // Adds the user's guess to .allGuesses
    func checkLetter() {
        var letterIsRight = false
        for char in answer {
            if char == guess {
                letterIsRight = true
            }
        }
        if (letterIsRight == false) {
            ++numberOfWrongGuesses
        }
        allGuesses.append(guess)
    }
    
    // Checks to see if the game has ended
    // Changes .inProgress to false if:
    //    the user has guessed all the letters in the answer
    //    the user has made more than 6 wrong guesses
    func updateGameStatus() {
        inProgress = false
        let rightGuesses = getRightGuesses()
        // Check if all letters have been guessed
        for char in rightGuesses {
            if (char == "_") {
                inProgress = true
            }
        }
        // Lose condition
        if (numberOfWrongGuesses == 6) {
            inProgress = false
        }
    }
    
    // Draws the hangman, answers, guesses, and game state
    func drawHangman() {
        // Line 1
        println("  __________     Answer:")
        // Line 2
        print("  |    |         ")
        println(getRightGuesses())
        // Line 3
        print("  |    ")
        if (numberOfWrongGuesses >= 1) {
            println("O")
        } else {
            println()
        }
        // Line 4
        print("  |")
        if (numberOfWrongGuesses <= 1) {
            print("              ")
        } else if (numberOfWrongGuesses == 2) {
            print("    |         ")
        } else if (numberOfWrongGuesses == 3) {
            print("   /|         ")
        } else if (numberOfWrongGuesses >= 4) {
            print("   /|\\        ")
        }
        println("You have guessed:")
        // Line 5
        print("  |")
        if (numberOfWrongGuesses == 5) {
            print("   /          ")
        } else if (numberOfWrongGuesses == 6) {
            print("   / \\        ")
        } else {
            print("              ")
        }
        printUsedLetters()
        // Line 6
        println("  |              ")
        // Line 7
        print("--------------   ")
        if (numberOfWrongGuesses == 6) {
            println("Game Over")
        } else if (inProgress == false) {
            println("You Win!")
        }
    }
    
    
    /**************************************************/
    /* Public methods                                 */
    /**************************************************/
    
    // Starts the game and runs the main game loop
    func play() {
        askAnswer()
        while (inProgress) {
            drawHangman()
            askLetter()
            checkLetter()
            clearScreen()
            updateGameStatus()
        }
        drawHangman()
    }
    
}










