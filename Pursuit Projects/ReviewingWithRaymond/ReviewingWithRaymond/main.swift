//
//  main.swift
//  ReviewingWithRaymond
//
//  Created by Alfredo Barragan on 12/18/18.
//  Copyright © 2018 Alfredo Barragan. All rights reserved.
//

import Foundation

class Node<T: Equatable>:  CustomStringConvertible, Equatable {
    static func  == (lhs: Node<T>, rhs: Node<T>) -> Bool {
       return   lhs.value == rhs.value &&
                lhs.next == rhs.next
    }
    
    var value: T
    var next: Node?
    
    init(value: T, next: Node? = nil) {
    self.value = value
    self.next = next
}

    var description: String {
        guard let next = next else {return "\(value) -> nil"}
        return "\(value) -> \(next)"
    }
    
    

}

var nodeTest = Node(value: 4, next: Node(value: 9, next: Node(value: 2, next: nil)))

print(nodeTest)

let num1 =  Node(value: 3, next: nil)
let num2 = Node(value: 2, next: nil)
print(num1 == num2)


class LinkedList<T:Equatable>: CustomStringConvertible {
    private var Head: Node<T>?
    private var Tail: Node<T>?

    
    
    var description: String {
        guard let head = Head else { return "empty" }
    return "\(head)"
    }
    
    
    
}

func largestElement <T> (in stack: Stack <T>) -> T? {
    
    for elements in stack {
        if a > b {
            print(a)
        }
    }
    return nil
}

print(largestElement([4,3,4,2,1,6]))
