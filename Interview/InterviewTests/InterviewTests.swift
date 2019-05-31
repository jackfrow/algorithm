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

}
