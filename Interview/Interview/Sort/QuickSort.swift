//
//  QuickSort.swift
//  Interview
//
//  Created by jackfrow on 2019/6/3.
//  Copyright © 2019 jackfrow. All rights reserved.
//

import Foundation

//快速排序的思想主要是取出无序序列中第一个值，然后通过比较将比该值小的元素放到该值的前方，将比该值大的元素放在该值的后方。这样一来该值前方的数据都要比该值小，该值后方的数据都要比该值大。然后再次对前半部分和后边半部分无序的数列进行上述操作，这样不断的操作，无序的序列的规模不断被缩小。等问题的规模被缩小到一定程度后，我们的序列就变的有序了。

func quickSort(sortArray: [NSInteger]) -> [NSInteger] {
    var list = sortArray
    
    quickSortPirvate(list: &list, low: 0, high: list.count - 1)
    
    return list
}

func quickSortPirvate(list:inout [NSInteger],low: Int, high: Int)  {
    if low < high {
        let mid = partion(list: &list, low: low, high: high)
        quickSortPirvate(list: &list, low: low, high: mid - 1)
        quickSortPirvate(list: &list, low: mid+1, high: high)
    }
}

private func partion(list:inout [NSInteger],low: Int, high: Int) -> Int {
    var low = low
    var high = high
    let temp = list[low]
    
    while low < high {
        
        while low < high && list[high] >= temp{
            high -= 1
        }
        list[low] = list[high]
        
        while low < high && list[low] <= temp{
            low += 1
        }
        list[high] = list[low]
    }
    list[low] = temp
    return low
}


//快速排序swift式实现
func quickSortSwift(_ array: [Int]) -> [Int]  {
    guard array.count > 1 else {
        return array
    }
    let pivot = array[array.count/2]
    let left = array.filter{$0 < pivot}
    let middle = array.filter{$0 == pivot}
    let right = array.filter{$0 > pivot}
    return quickSortSwift(left) + middle + quickSortSwift(right)
    
}
