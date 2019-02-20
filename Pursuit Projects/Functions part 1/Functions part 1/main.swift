//
//  main.swift
//  Functions part 1
//
//  Created by Alfredo Barragan on 10/23/18.
//  Copyright © 2018 Alfredo Barragan. All rights reserved.
//

import Foundation

//print("Hello, World!")
//
//
//var anInt: Int?
//anInt = 7
//
////best way to safetly unwrap
//
//if let safeInt = anInt {
//    anInt = safeInt + 10
//}
//
//print(anInt)
//
//// creat it, define it
//
//func spitsTheTruth(name:String) -> String {
//
//    return "\(name) is dope"
//}
//
//
//// call it, use it, invoke it, summon it
//print(spitsTheTruth(name: "alan"))
//
//
//func getsBiggestNumber(numbers: [Int]) -> Int? {
//    guard !numbers.isEmpty else { return nil }
//
//    var biggestNumber = Int.min
//    for number in numbers {
//        if number > biggestNumber {
//            biggestNumber = number
//        }
//    }
//    return biggestNumber
//}
//
//let test = [6,3,2,1,0]
//
//print(getsBiggestNumber(numbers: test))
//
//let secondTest = [Int]()


var myNumber = 3

func thisChangesTheInputByTwo(input: inout Int) -> Int){
    input = input + 2
}

thisChangesTheInputByTwo(input: &myNumber)
print(myNumber)




