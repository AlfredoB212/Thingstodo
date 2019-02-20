//
//  main.swift
//  whiteboarding
//
//  Created by Alfredo Barragan on 10/23/18.
//  Copyright © 2018 Alfredo Barragan. All rights reserved.
//

import Foundation

func numCheck (num1: Int, num2: Int) -> String {
    
    if num2 > num1 {
        print("True")
    } else if num1 > num2 {
        print("false")
    } else {
        print("-1")
    }
    return "\(numCheck)"
}


print(numCheck(num1: 3, num2: 5))


var myString = ("We're flooding people with information. We need to feed it through a processor. A human must turn information into intelligence or knowledge. We've tended to forget that no computer will ever ask a new question.")

for elements in myString {
    print(elements)
}

print(myString.characters.count)

