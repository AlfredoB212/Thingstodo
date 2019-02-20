//
//  main.swift
//  Operations
//
//  Created by Alfredo Barragan on 10/29/18.
//  Copyright © 2018 Alfredo Barragan. All rights reserved.
//
import Foundation


//if let userInput = readLine() {
//    let components2 = userInput.components2(separatedBy: " ")
//} print(components2)




func mathStuffFactory(opString: String) -> (Double, Double) -> Double {
    switch opString {
    case "+":
        return {x, y in x + y }
    case "-":
        return {x, y in x - y }
    case "*":
        return {x, y in x * y }
    case "/":
        return {x, y in x / y }
    default:
        return {x, y in x + y }
    }
}

let userInput = "5 * 6"

let components = userInput.components(separatedBy: " ")
print(components)


let mathOperation = mathStuffFactory(opString: "*")


let result = mathOperation(5, 6)
print("\(userInput) = \(result)")

