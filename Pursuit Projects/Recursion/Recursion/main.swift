//
//  main.swift
//  Recursion
//
//  Created by Alfredo Barragan on 12/11/18.
//  Copyright © 2018 Alfredo Barragan. All rights reserved.
//
//
//import Foundation
//
//func recurse() {
//    var currentIteration = 0
//    print("hi")
//    recurse()
//    currentIteration += 1
//
//    if currentIteration >= 10 {
//        return
//    }
//}
//
//recurse()



func recurse (num1: [Int]) {
    var num2 = 0
    if num2 == num1.count {
        return
    }
    recurse(num1: [num1[num2 + 1]])
    
}


//let array1 = [1,2,3]
//print(array1[0])
recurse(num1: [1,2,3])

