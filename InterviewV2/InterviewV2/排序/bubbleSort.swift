//
//  bubbleSort.swift
//  InterviewV2
//
//  Created by jackfrow on 2021/4/24.
//

import Foundation


func bubbleSort(list : [Int]) -> [Int] {
    
    var arr = list
    let count = list.count
    
    
    
    for i in 0 ..< count  {
        var flag = true
        for j in 0 ..< count-i-1 {
            
            if arr[j] > arr[j+1] {
                let temp = arr[j]
                arr[j] = arr[j+1]
                arr[j+1] = temp
                flag = false
            }
            
        }
        if flag {
            break
        }
    }
    
    return arr
    
}
