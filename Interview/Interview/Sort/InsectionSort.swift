//
//  InsectionSort.swift
//  Interview
//
//  Created by jackfrow on 2019/6/2.
//  Copyright © 2019 jackfrow. All rights reserved.
//

import Foundation
///插入排序（Insertion-Sort）的算法描述是一种简单直观的排序算法。它的工作原理是通过构建有序序列，对于未排序数据，在已排序序列中从后向前扫描，找到相应位置并插入。

func insertionSort(sortArray: [NSInteger]) -> [NSInteger]  {
    
    var tempSortArray = sortArray
    let count = sortArray.count
    
    for i in 1 ..< count {
        let tempValue = tempSortArray[i]
        var insertIndex = 0
        for j in 0 ..< i{
            insertIndex = i - j - 1
            if tempValue > tempSortArray[insertIndex]{
                insertIndex = i - j
                break
            }
            tempSortArray[insertIndex+1] = tempSortArray[insertIndex]
        }
        tempSortArray[insertIndex] = tempValue
    }
    
    return tempSortArray
}
