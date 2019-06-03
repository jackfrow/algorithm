//
//  MergeSort.swift
//  Interview
//
//  Created by jackfrow on 2019/6/3.
//  Copyright © 2019 jackfrow. All rights reserved.
//

import Foundation
//归并排序是建立在归并操作上的一种有效的排序算法。该算法是采用分治法（Divide and Conquer）的一个非常典型的应用。将已有序的子序列合并，得到完全有序的序列；即先使每个子序列有序，再使子序列段间有序。若将两个有序表合并成一个有序表，称为2-路归并

func mergeSort(sortArray: [NSInteger]) -> [NSInteger] {

    let sortArrayCount = sortArray.count
    if sortArrayCount < 2 {
        return sortArray
    }

    var tempSortArray = sortArray
    let sortArrayMiddleIndex = tempSortArray.count/2 - 1

    let leftArray = [NSInteger]() + tempSortArray[0 ... sortArrayMiddleIndex]
    let rightArray = [NSInteger]() + tempSortArray[sortArrayMiddleIndex+1 ... sortArrayCount - 1]

    let resultArray = mergeArray(leftArray: mergeSort(sortArray: leftArray), rightArray: mergeSort(sortArray: rightArray))

    return resultArray

}


func mergeArray(leftArray: [NSInteger], rightArray: [NSInteger]) -> [NSInteger]  {
    var mergeArray = [NSInteger]()
    var minArray = leftArray.count < rightArray.count ? leftArray : rightArray
    var maxArray = leftArray.count < rightArray.count ? rightArray : leftArray
    var minIndex = 0,maxIndex = 0

    while minIndex < minArray.count && maxIndex < maxArray.count {

        if minArray[minIndex] < maxArray[maxIndex]{
            mergeArray.append(minArray[minIndex])
            minIndex += 1
        }else{
            maxArray.append(maxArray[maxIndex])
            maxIndex += 1
        }
        
    }
    
    while minIndex < minArray.count {
        mergeArray.append(minArray[minIndex])
        minIndex += 1
    }
    
    while maxIndex < maxArray.count {
        mergeArray.append(maxArray[maxIndex])
        maxIndex += 1
    }
    
    return mergeArray
    
}
