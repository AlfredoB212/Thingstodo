//
//  main.swift
//  LinkedList
//
//  Created by Alfredo Barragan on 11/20/18.
//  Copyright © 2018 Alfredo Barragan. All rights reserved.
//

import Foundation

class Node<T: Equatable>: CustomStringConvertible, Equatable {
    var description: String {
        guard let next = next else { return "\(value) -> nil" }
        return "\(value) -> \(next)"
    }

    var value: T
    var next: Node?

    init(value: T, next: Node? = nil) {
        self.value = value
        self.next = next
   }


    static func == (lhs: Node, rhs: Node) -> Bool {
        return
            lhs.value == rhs.value &&
            lhs.next == rhs.next

    }




}


//let node9 = Node(value: 9)
//print(node9)


// exercise: 9 -> 3 -> 11 -> nil

let node11 = Node(value: 11, next: nil)
let node3 = Node(value: 3, next: node11)
let node9 = Node(value: 9, next: node3)

print(node9)

let nodeName = Node(value: "Swift", next: nil)





struct Person: Equatable {

}

let person1 = Person()
let person2 = Person()
print(person1 == person2)
let personNode = Node<Person>(value: person1)


// Question 1

let pNode = Node(value: "p", next: nil)
let cNode = Node(value: "c", next: pNode)
let aNode = Node(value: "a", next: cNode)
let dNode = Node(value: "d", next: aNode)

print(dNode)

let arrayNode = Node(value: [1,2,3], next: Node(value: [2], next: Node(value: [6,8,2], next: Node(value: [], next: nil))))

print(arrayNode)

let node2 = Node(value: 2, next: nil)
let node10 = Node(value: 10, next: node2)
let node7 = Node(value: 7, next: node10)
let intNodes = [node7, node10, node2]

intNodes.forEach { print($0.value, terminator: " , ")}


print(node2)


// implementation of a linked list

    class LinkedList<T: Equatable>: CustomStringConvertible {
    private var head: Node<T>?
    private var tails: Node<T>?


    var description: String  {
        guard let head = head else { return "empty list" }
        return "\(head)"
    }



    // HEAD
    public var first: Node<T>? {
        return head
    }

    // TAIL
    public var last: Node<T>? {
        return tails
    }

// isEmpty
    public var isEmpty: Bool {
        return head == nil
    }

    public func append(value: T) {
        let newNode = Node(value: value)
        if let lastNode = last {
            lastNode.next = newNode
        } else {
            head = newNode
        }
        tails = newNode
    }








    let linkedList = LinkedList<Int>()
    if linkedList.isEmpty {
    print("empty list")
    } else {
    print("has items")
    }


// remove last node in linked list
public func removeLast() -> Node<T>? {
    guard !isEmpty else { return nil}
    return nil
//}
//
//
//
//
//
//
//// this is a singly linkedlist meaning one direction (not the band)
//LinkedList.append(value: 7)
//LinkedList.append(value: 11)
//LinkedList.append(value: 5)
//LinkedList.append(value: 9)
//
//print(LinkedList)
//}
//
//
//

// implement a Stack using the built-in Array structure

//struct Stack<T> {
//    private var items = [T]() // items in the Stack
//
//    public var isEmpty: Bool {
//        return items.count == 0
//    }
//
//    // look at the top item, dos not remove the item from the stack
//    public var peek: T? {
//        return items.last
//    }
//
//    public mutating func push(_ item: T) {
//        items.append(item)
//    }
//
//
//    public mutating func pop() -> T? {
//        return items.removeLast()
//    }
//
//
//
//}
//var intStack = Stack<Int>()
//intStack.push(8)
//intStack.push(11)
//print(intStack)
//let removedItem = intStack.pop()
//print(intStack)



// implement a stack using a linked list

struct Stack<T: Equatable> {
    private var items = LinkedList<T>()
}



















