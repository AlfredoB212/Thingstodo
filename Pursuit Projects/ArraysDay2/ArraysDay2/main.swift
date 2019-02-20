//
//  main.swift
//  ArraysDay2
//
//  Created by Alfredo Barragan on 10/12/18.
//  Copyright © 2018 Alfredo Barragan. All rights reserved.
//

import Foundation


// prints all elements in an array
let myArr = [1,5,2,3,194,-32]
for i in myArr {
    print(i)
}


// print out the length of an array
print(myArr.capacity)
myArr.count

let theMatrix = [[1, 2, 3],
                 [4, 5, 6],
                 [7, 8, 9]]

// print the first array in the matrix

print("first array in matrix \(theMatrix[0])")

print("top left corner is \(theMatrix[0][0])")






