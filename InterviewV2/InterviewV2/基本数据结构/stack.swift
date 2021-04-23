//
//  stack.swift
//  InterviewV2
//
//  Created by jackfrow on 2021/4/23.
//

import Foundation

//数组实现栈

class Stack {
    var stack : [AnyObject]
    var isEmpty : Bool {return stack.isEmpty}
    var peek: AnyObject? {return stack.last}
    
    init() {
         stack = [AnyObject]()
    }
    
    func push(object:AnyObject)  {
        stack.append(object)
    }
    
    func pop() -> AnyObject? {
        if (!isEmpty) {
            return stack.removeLast()
        }else{
            return nil
        }
    }
    
}


class Person: NSObject {
    var age: Int = 0
}
