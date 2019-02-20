//
//  main.swift
//  OptionalsReview
//
//  Created by Alfredo Barragan on 10/16/18.
//  Copyright © 2018 Alfredo Barragan. All rights reserved.
//

import Foundation

print("Please enter your age: ")

// using optional binding to unwrap String? value
//if let userResponse = readLine() {
//    if let age = Int(userResponse) {
//        if age >= 21 {
//            print("Drink up")
//        }
//    }
//} else {
//    print("userResponse is nil")
//}
//
//
//var array1 = [1,4,-2,-9,2,-2,1,10,4]
//var arr =
//var index = 0
//var compare = Int
//
//for elements in array1 {
//    compare = elements
//        index += 1
//        if compare == array1.index
//}
//


//var answerisCorrect = false
//var answer = ""
//answer += "a"
//print(answer)

var myArray = ["alan", "alex", "name", "othername"]
print(myArray[1]) // accessing an element in an array

// type annotation     [typeForKey:typeForValue]
var myFirstDictionary: [String:Int]

myFirstDictionary = [
    "alan":12,
    "alex": 100,
    "someoneElse":1000
                    ]

//print(myFirstDictionary["alan"])
////hash map
//// dictionary's do not hold order.
//
//
//
//var mySecondDictionary = [
//    12:"alan",
//    67:"alex",
//    2000:"nate",
//    0: "someguy"
//                        ]
//
//
//print(mySecondDictionary[0])
//
//
//myFirstDictionary["alan"] = 14
//myFirstDictionary["alan"] = 15
//
//myFirstDictionary.removeValue(forKey: "alan")
//
//print(myFirstDictionary)



let unsafeValue = myFirstDictionary["alan"]!

//option binding

if let safeValue = myFirstDictionary["alan"] {
    print(safeValue)
}

//// nil coalescing value
//let globalValue = myFirstDictionary["alan"] ?? 0
//print(globalValue)






//let globalValue = myfirstDictionary["alan"] ?? 0

var myArrayDictionary: [String: [Int]]
myArrayDictionary = [
    "alex": [12],
    "someoneElse":[1000,21,4,6],
    "alan": [34],
    "Josh": [600]   ]


for pair in myArrayDictionary {
    print(pair.key)
}

for (myKey,myValue) in myArrayDictionary {
    print(myKey)
}


for key in myFirstDictionary.keys {
    print(key)
}

for value in myFirstDictionary.values {
    print(value)
}





//let myKeys = Array(myFirstDictionary.keys)
//print(myKeys)



//var myLastDictionary = [3: "alan", 2: "alex", 89: "other", 0:"last"]
//print(myLastDictionary)
//
//
//
//var myKeys = Array(myLastDictionary.keys)
//print(myKeys)
//
//myKeys.sort()
//print(myKeys)
//
//
//for key in myKeys {
//    print(myLastDictionary[key])
//}



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


for letters in message {
    if letters != nil {
      print(code[String(letters)])
    }
}

for letters in message {
    if letters != nil {
        print(code[String(letters)])
    }
}


