//
//  InterviewTests.swift
//  InterviewTests
//
//  Created by jackfrow on 2019/5/30.
//  Copyright © 2019 jackfrow. All rights reserved.
//

import XCTest
@testable import Interview

class InterviewTests: XCTestCase {

    
    func testTwoSum()  {
        
        XCTAssert(  twoSum(nums: [1,2,3,4,5], 6) == true)
        XCTAssert(  twoSum(nums: [1,2,3,4,5,6], 20) == false)
        
    }
    
    
    func testReverseWords()  {
        
        XCTAssert(reverWords(s: "the sky is blue") == "blue is sky the")
    }
    
    func testSimplifyPath()  {
        
        XCTAssert(simplifyPath(path: "/a/./b/../../c") == "/c")
        
        
    }
    
    func testTreeDepth()  {
        
        let root = TreeNode(1)
        let left1 = TreeNode(2)
        let right1 = TreeNode(3)
        let left2 = TreeNode(4)
        
        root.left = left1
        root.right = right1
        left1.left = left2
        
        XCTAssert(maxDepth(root: root) == 3)
        
    }
    
    
    func testValidBSTTree() {
        
        let root = TreeNode(3)
        let letf1 = TreeNode(2)
        let right1 = TreeNode(4)
        let left2 = TreeNode(1)
        let right2 = TreeNode(5)
    
        
        root.left = letf1
        root.right = right1
        letf1.left = left2
        right1.right = right2
        
        XCTAssert(isValidBST(root: root) == true)
        
        
    }
    
    func testBubble()  {
        
        var arr = [2,3,1]
    
        XCTAssert(bubbleSort(&arr) == [1,2,3])
        
    }


}
