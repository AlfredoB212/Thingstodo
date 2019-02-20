//
//  main.swift
//  Closure Pt 2
//
//  Created by Alfredo Barragan on 10/25/18.
//  Copyright © 2018 Alfredo Barragan. All rights reserved.
//

import Foundation

print("Hello, World!")
// .reduce is when you have a collections of elements and reducing it down to a single value.
// .map alters all the elements in an array form. .map is used for arrays
//.filter chooses certain elements in the array and give that in an array.
// you can use .map .filter, .reduce on collections of elements (arrays, dictionary, sets, Strings)

// trailing syntex means you are not going to use a function but instead fall back on $0,$1
// example using $0 and $1

let array = [4,5,3,2,0,1]

array.sorted{ $0 < $1}

array.filter() {
    $0 % 2 == 0
}

let mapNumbers = [2,36,75,8]
let mapStrings = ["cat","dog","bird","shark","tiger"]


// regular notation, easier to show/explain
print(mapNumbers.map { (currentNumber) -> Int in
    currentNumber - 3
    
})
// shorted handed more concise way to do it.

print(mapNumbers.map(){$0 - 3})
// these methods DO NOT CHANGE THE ORIGINAL ARRAY!!

print(mapStrings.map { (currentString) -> String in
     return currentString + " " + "is dope"
    
})

print(mapStrings.map( {   (currentString) -> Int in
    return currentString.count
    
}))

func printThreeTimes(k:Int, closure: () -> ()) {
    for _ in 1...k  {
        closure()
    }
}

var myClosure = { () -> () in
    print("we love swift")
    
}

printThreeTimes(k: 3, closure: myClosure)

let myNewNumbers = [3,4,56,33,769]


print(myNewNumbers.reduce(Int.max) { $0 < $1 ? $0:$1})

let myString = "this is the test!"

print(myString.reduce("") { (currentString, nextCharacter) -> String in
    if nextCharacter.description != " " {
        return currentString + nextCharacter.description
    } else {
        return currentString
    }
})
