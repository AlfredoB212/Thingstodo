//
//  main.swift
//  DSATest
//
//  Created by Alfredo Barragan on 12/21/18.
//  Copyright © 2018 Alfredo Barragan. All rights reserved.
//

import Foundation

//Write a function that returns the sum of the first 5 even numbers in an array.  If an array has less than 5 even numbers, then return the sum of all even numbers in the array.
//
//
//
//Sample input: [1,4,2,3,10,1,2,6,4,2,3,2,10]
//
//Sample output: 24

//func evennumbers(arr: [Int]) -> Int {
//    var sum = 0
//    var emptyArray = [Int]()
//    for elements in arr {
//        if elements % 2 == 0 {
//            emptyArray.append(elements)
//
//        }
//    }
//    print(emptyArray)
//    if emptyArray.count < 5 {
//         sum = emptyArray.reduce(0, +)
//         print(sum)
//    } else if emptyArray.count >= 5 {
//        let newArray = emptyArray.prefix(5)
//        sum = newArray.reduce(0, +)
//
//
//        }
//       return sum
//    }
//print(evennumbers(arr: [1,4,2,3,10,1,2,6,4,2,3,2,10]))

//Write a function that returns the sum of all the Ints except the corners in an array of arrays of Integers ( [[Int]] ).  You can assume that the input array of arrays has the same number of rows and columns.
//
//
//
//Sample input:
//[[1,2,3],
//[4,5,6],
//[7,8,9]]
//
//Sample output: 25

//var inputMatrix = [[1,2,3],
//                   [4,5,6],
//                   [7,8,9]]
//
//func sumOfIntsExcpetCorners (matrix: [[Int]]) -> Int {
//    var sum = 0
//    for array in matrix {
//        for num in array {
//            sum += num
//        }
//    }
//    sum -= (matrix[0][0] + matrix[0][matrix.count - 1] + matrix[matrix.count - 1][0] + matrix[matrix.count - 1][matrix.count - 1])
//    return sum
//}
//print(sumOfIntsExcpetCorners(matrix: inputMatrix))

//Write a function that takes a Node as input, and returns the sum of every element in that linked list.
//
//
//
//Sample input: (3) -> (4) -> (2) -> (10) -> nil
//
//Sample output: 19




//class Node<T: Equatable>:  CustomStringConvertible, Equatable {
//    static func  == (lhs: Node<T>, rhs: Node<T>) -> Bool {
//        return   lhs.key == rhs.key &&
//            lhs.next == rhs.next
//    }
//
//    var key: Int
//    var next: Node?
//
//    init(key: Int, next: Node? = nil) {
//        self.key = key
//        self.next = next
//    }
//
//    var description: String {
//        guard let next = next else {return "\(key) -> nil"}
//        return "\(key) -> \(next)"
//    }
//
//
//
//}
//class LinkedList<T:Equatable>: CustomStringConvertible {
//    private var Head: Node<T>?
//    private var Tail: Node<T>?
//
//
//
//    var description: String {
//        guard let head = Head else { return "empty" }
//        return "\(head)"
//    }
//
//
//
//}
//class Node: CustomStringConvertible {
//    var description: String
//
//    var key: Int
//    var next: Node?
//    init(key: Int, next: Node?, description: String ) {
//        self.key = key
//        self.next = next
//        self.description = description
//    }
//}
//
//class LinkedList {
//    private var Head: Node?
//    private var Tail: Node?
//}
//
// let node6 = Node(key: 6, next: nil, description: "6")
//let node5 = Node(key: 5, next: node6, description: "5")
//let node4 = Node(key: 4, next: node5, description: "4")
//let newLinkedList = LinkedList.init()
//print(node4)
//print(newLinkedList)
//
//
//
//func addingLinkedList(parameter: Node) -> Int {
//    var sum = 0
//    return sum
//}
//
//struct Stack<T> {
//    private var arr: [T] = []
//
//    mutating func push(element: T) {
//        arr.append(element)
//    }
//    mutating func pop() -> T? {
//        return arr.popLast()
//    }
//
//    public var peek: T? {
//        return arr.last
//    }
//    public var isEmpty: Bool {
//        return arr.count == 0
//    }
//}
//
func printThings(arr: [Int]) {
    for num in arr {
        for _ in 0..<10 {
            print(num)
        }
    }
}


