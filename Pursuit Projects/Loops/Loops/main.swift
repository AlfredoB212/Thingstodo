//
//  main.swift
//  Loops
//
//  Created by Alfredo Barragan on 10/8/18.
//  Copyright © 2018 Alfredo Barragan. All rights reserved.
//

import Foundation

//print("Hello, World!")
////
////let myRange = 0...6
//
////for thing in things
//
//
//
//let name = "alan"
//
//for letter in name {
//    //this gives me a character and not a string
//    letter
//    print(String(letter))
//}


// anything.descrption is a method where .description changes any type into a string


//var base = 3
//var power = 4
//var num = 1
//// this is a loop to find the power of something (3^4)
//for _ in 1...power {
//    num *= base
//    print(num)
//}

//
//for i in 1...100 where i % 2 == 0 {
//    print(i)
//}
//

//var numberOfStudents = 0
//
//while numberOfStudents < 35 {
//    print("found student!")
//    numberOfStudents += 1
//}
//
//


//
//var i = 0
//
//repeat {
//    print("when is lunch?!")
//    i += 1
//} while i < 10
//




//for i in 1..<100 where i % 5 == 0 && i % 10 != 0 {
//
//    print(i)
//
//}



//var i = 0
//
//for i in 7...40 where i % 10 == 0 {
//    print(i - 3)
//
//}


//for i in 20...150 where i % 3 == 0 {
//
//    print(i)
//
//}





//var i = 5
//let j = 1 + 1000
//
//while (i < j) {
//    i += 1
//
//    if i % 2 == 0 {
//        print (i)
//    }
//}

//var shields = 5
//var yourTurn = true
//
//while shields > 0 {
//    if yourTurn  {
//        print("You shot the enemy")
//        break
//    }
//    print("Enemy attacks")
//}
//

// Continue forces you to start the loop all over
// Break forces the loop to end, you move to the line outside the loop



//outerLoop: for i in 1...5 {
//    innerLoop: for j in 1...5 {
//        print("\(i),\(j)", separator: "", terminator: " ")
//    }
//    print("")
//}


//
//outerLoop: for i in 0...10 {
//    innerLoop: for j in 0...10 where (j - i) == 5 || (j + 5) == i{
//        print ("\(i), \(j)", separator: "", terminator: " ")
//
//    }
//    print("")
//}
//
//



//let myString = "Alan"
////
////
////for letter in myString.enumerated() {
////    print(letter)
////    }
//
//
//
//
//for (myOffset,myCharacter) in myString.enumerated() {
//    print(myCharacter)
//}


//outerLoop: for i in 0...10 {
//    innerLoop: for j in 0...10 where (j * i) < 6 {
//        print ("\(i), \(j)", separator: "", terminator: " ")
//
//    }
//    print("")
//}
//




//outerLoop: for i in 0...10 {
//    innerLoop: for j in 0...10 where (i != j) {
//        print ("\(i), \(j)", separator: "", terminator: " ")
//
//    }
//    print("")
//}
//
//






//var number = 10
//var num = 2
//
//
//for number in 0...10  {
//    if num * num < number {
//        print(num)
//}
//}



//outerLoop: for i in 0...10 {
//
//            innerLoop: for j in 0...10 where (j - i) >= 5 || (j + 5) <= i{
//
//                        print ("\(i), \(j)", separator: "", terminator: " ")
//
//
//
//                }
//
//            print("")
//
//}




//
//var n = 10
//let base = 2
//let power = 4
//var answer = 1
//
//
//for _ in 0..<power {
//
//    answer *= base
//    if answer <= n {
//        print("\(answer)")
//    }
//}


//
//var n = 2
//for i in 0..<n  {
//    for i in 0..<n {
//    print("*", separator: "", terminator: "")
//}
//    print("")
//}




//var name = "Alfredo"
//name.append("Barragan")
//print(name)

// print() where print is a function, and () is a parameter



//var name = "Alfred"
//print(name, separator: "", terminator: "")
//
//var watchingMovie = "Toy Story"
//var nextMovie = watchingMovie
////nextMovie += "Two"
////print("Watching: \(watchingMovie), gonna watch \(nextMovie)")
////
////var numMovies = 2
////print("There are \(numMovies) in the queue")
////
//
//
//
//for letter in nextMovie {
//    print(letter)
//}
//
//




let base = 2
let power = 29
var answer = 1


for _ in 0..<power {
    
    answer *= base
    
    print(Double(answer) * 0.01 + 0.01)
}

































































