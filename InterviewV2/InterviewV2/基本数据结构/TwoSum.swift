//
//  TwoSum.swift
//  InterviewV2
//
//  Created by jackfrow on 2021/4/23.
//

import Foundation

//题目:给出一个整型数组和一个目标值,判断数组中是否有两个数之和等于目标值
func twoSum(nums: [Int],_ target:Int) -> Bool  {
    

    var set = Set<Int>()
    
    for num in nums {
        if set.contains(target-num) {
            return true
        }
        set.insert(num)
    }
    
    return false
    
}


//题目:给定一个整型数组中有且仅有两个数之和等于目标值,求这两个数在数组中的序号


func twoSum2(nums:[Int],_ target:Int) -> [Int] {
    
    var dic = [Int:Int]()
    
    for (i,num) in nums.enumerated() {
        
        if let lastIndex = dic[target-num] {
            return [lastIndex,i]
        }else{
            dic[num] = i
        }
        
    }
    
   return [-1,-1]
    
    
}
