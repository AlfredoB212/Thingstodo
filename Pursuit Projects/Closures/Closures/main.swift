//
//  main.swift
//  Closures
//
//  Created by Alfredo Barragan on 10/24/18.
//  Copyright © 2018 Alfredo Barragan. All rights reserved.
//

import Foundation

//print("Hello, World!")
//
////This is a special kind of closure (global named closure)
//
//func returnsCapitalizedName(name:String) -> String {
//    return name.capitalized
//
//}
//
//
//// regular closure
//
//let myFirstClosure = {(name:String) -> String in
//    return name.capitalized
//}
//
//
//
//let doYouHavePets = { (pets: Int) -> Bool in
//    if pets > 0 {
//        return true
//    } else {
//        return false
//    }
//}
//
//let myAddClosure = { (num: Int, num2: Int)-> Int in
//       let sum = num + num2
//        return sum
//}
//print(myAddClosure(4,4))
//
//
//let mySubtractClosure = { (a:Int, b:Int) -> Int in
//            a - b
//}
//
//let myMultiplyClosure = { (c:Int, d:Int)  -> Int in
//                c * d
//}
//
//let myDivisionClosure = { (e:Int, f:Int ) -> Int in
//                e/f
//}
//
//
//func combine(a:Int, b:Int,operation: (Int,Int)->Int) -> Int {
//        return operation(a,b)
//}
//
//print(combine(a: 2, b: 3, operation: myAddClosure))
//print(combine(a: 4, b: 2, operation: myMultiplyClosure))
//
//
////let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
////
////func backwards(firstString:String,secondString:String) -> Bool {
////        return firstString < secondString
////}
//////var reverseNames = names.sorted(by: {a,b in a > b })
//////print(reverseNames)
////
//////var reversedNames = names.sorted(by: {$0 > $1})
//////var reversedNames = names.sorted(by: >)
////
//////trailing syntex
////var reversedNames = names.sorted(){$0 > $1}
////print(reversedNames)
//
//let numbers = [32, 21, 33, 2, 66, 88, 43, 902, 73, 27, 905]
//let words = ["One", "two", "Buckle", "my", "shoe"]
//
//var ascendingNumbers = numbers.sorted(by: {$0 < $1})
//print(ascendingNumbers)
//
//var descendingWords = words.sorted(by: {$0.lowercased() > $1.lowercased()})
//print(descendingWords)
//
//var wordsLength = words.sorted(by: {$0.count < $1.count})
//print(wordsLength)
//
//
//var complicatedQuestion = numbers.sorted(by: {$0 % 2  < $1 % 2 })
//print(complicatedQuestion)
//
//
////map is a fuction xx.map (the .map is a function, similar to .sorted)
////returns a new array, which changes every single element in a single array
//
//let myNumbers = [2,3,46,7,8]
//let addedArray = myNumbers.map { (currentElement) -> Int in
//    return currentElement + 2
//}
//let shorterWay = myNumbers.map {$0 + 2}
//print(addedArray)
//print(shorterWay)

//
//
//let names = ["alyson", "alex"]
//
//print(names.map{$0 + "welcome!"})
//
//
//
//var names2 = ["alyson","alex"]
//names2 = names2.map(){$0 + " welcome"}
//print(names2)
//
//
//let myArray = [2,3,4,5,6,7,8,9,10]
//let myEvens = myArray.filter { (numberIAmLookingAt) -> Bool in
//        return numberIAmLookingAt % 2 == 0
//}
//
//print(myEvens)
//
//
//let myStrings = ["bat", "cat", "tiger", "rawr"]
//let lessThan3 = myStrings.filter{ $0.count <= 3}
//print(lessThan3)
//
//
//let fast = myArray.filter() {$0 % 2 == 0}.sorted(){$0 < $1}
//print(fast)
//
//
//
//
//
//
//
//
//let myNumbers2 = [1,2,3,4]
//myNumbers.reduce(0) { (currentValue, nextValue) -> Int in
//        return currentValue + nextValue
//}
//
//
//print(myNumbers.reduce(0){$0 + $1})
//print(myNumbers2.reduce(0,+))
//
//
//
//
//
//
//
//let myMatrix = [[3,4,5]
//                [4,6,5]
//                [2,1,4]]
//
//
//
//var myNewMatrix: [[Int]] = []
//for array in myNewMatrix {
//    myNewMatrix.append(array.map)(){$0 + 2}
//
//}

//Question 1

func applyKTimes( K: Int,







