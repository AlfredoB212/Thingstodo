//
//  main.swift
//  Stacks
//
//  Created by Alfredo Barragan on 11/27/18.
//  Copyright © 2018 Alfredo Barragan. All rights reserved.
//

import Foundation

// implement Node Class
class Node<T>: CustomStringConvertible {
    
    
    var value: T
    var next: Node?
    
    
    var description: String {
        guard let next = next else { return "\(value) -> nil" }
        return "\(value) -> \(next)"
    }
    
    init (value: T) {
        self.value = value
    }
}

let node9 = Node(value: 9)
print(node9)



struct LinkedList<T> {
   private var head: Node<T>?
    private var tail: Node<T>?
}
