//
//  twoSum.swift
//  Interview
//
//  Created by jackfrow on 2019/5/30.
//  Copyright © 2019 jackfrow. All rights reserved.
//

import Foundation

///给出一个整型数组和一个目标值，判断数组中是否有两个数之和等于目标值
func twoSum(nums : [Int], _ target : Int) -> Bool {
    var set  = Set<Int>()
    
    for num in nums {
        
        if set.contains(target - num){
            return true
        }
        set.insert(num)
    }
    
    return false
}
