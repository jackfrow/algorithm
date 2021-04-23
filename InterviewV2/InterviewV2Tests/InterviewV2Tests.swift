//
//  InterviewV2Tests.swift
//  InterviewV2Tests
//
//  Created by jackfrow on 2021/4/23.
//

import XCTest
@testable import InterviewV2

class InterviewV2Tests: XCTestCase {


    
    func testCustomStack() {
        
        
        let stack = Stack()
        XCTAssert( stack.isEmpty == true)
        XCTAssert(stack.peek == nil)
        
        let p1 = Person()
        p1.age = 20
        stack.push(object: p1)
    
        let p2 = Person()
        p2.age = 25
        stack.push(object: p2)
        
        XCTAssert(stack.isEmpty == false)
        //TODO:这里功能还需要调整
        XCTAssert(stack.peek as! NSObject == p2)
        
    }
    
    func testTwoSum() {
        
        XCTAssert(twoSum(nums: [1,2,3,4,5,6], 7) == true)
        XCTAssert(twoSum(nums: [1,2,3,4,5,6], 20) == false)
        
    }
    
    func testTwoSum2() {
        XCTAssert(twoSum2(nums: [1,2,4,8,16], 17) == [0,4])
        XCTAssert(twoSum2(nums: [1,2,4,8,16],27) == [-1,-1])
    }
    
    func testStringReverse() {
        XCTAssert(reverseWords(s: "the sky is blue") == "blue is sky the")
    }
    
    func testNode() {
        //1->5->3->2->4->2 给定x=3,需要返回1-2->2->5->3->4.
        
        let list = List()
        let node = list.createListWithNodes(items: [1,5,3,2,4,2])
        
        if node == nil {
            fatalError("invalid node")
        }
        
        XCTAssert(list.verifyNode(node: node, items: [1,5,3,2,4,2]) == true)
        
        let outNode = partition(node, 3)
        XCTAssert(list.verifyNode(node: outNode, items: [1,2,2,5,3,4]) == true)
        
    
    }

}
