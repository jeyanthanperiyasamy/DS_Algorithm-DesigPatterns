//
//  Stack.swift
//  DataStructuresAlgorithm
//
//  Created by Jey Periyasamy on 3/22/17.

//

import Foundation

// Generic Stack Array
struct Stack<Element> {
    
    var array = [Element]()
    mutating func push(value:Element) {
        self.array.append(value)
    }
    
    mutating func pop() -> Element? {
        return self.array.popLast()
    }
    
    func top() -> Element? {
        return self.array.last
    }
}

