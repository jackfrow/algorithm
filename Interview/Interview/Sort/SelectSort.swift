//
//  SelectSort.swift
//  Interview
//
//  Created by jackfrow on 2019/6/1.
//  Copyright © 2019 jackfrow. All rights reserved.
//

import Foundation
//选择排序
//选择排序(Selection-sort)是一种简单直观的排序算法。它的工作原理：首先在未排序序列中找到最小（大）元素，存放到排序序列的起始位置，然后，再从剩余未排序元素中继续寻找最小（大）元素，然后放到已排序序列的末尾。以此类推，直到所有元素均排序完毕。


func selectionSort(sortArray: [Int]) -> [Int] {
    
    var tempArray = sortArray
    let count = sortArray.count
    
    for i  in 0..<count {
        var minIndex = i
        for j in minIndex+1 ..< count{
            
            if tempArray[minIndex] < tempArray[j]{
                minIndex = j
            }
        }
        let temp = tempArray[i]
        tempArray[i] = tempArray[minIndex]
        tempArray[minIndex] = temp
        
    }
    
    return tempArray
    
}
