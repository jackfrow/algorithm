//
//  ridixSort.swift
//  Interview
//
//  Created by jackfrow on 2019/6/4.
//  Copyright © 2019 jackfrow. All rights reserved.
//

import Foundation

//创建10个空桶
private func createBucket() -> [[Int]] {
    var bucket: [[Int]] = []
    for _ in 0 ..< 10 {
        bucket.append([])
    }
    return bucket
}

//找出数组中最大值
private func listMaxItem(list: [Int]) -> Int {
    var maxNumber = list[0]
    for item in list {
        if maxNumber < item{
              maxNumber = item
        }
      
    }
    return maxNumber
}

private func numberLength(number: Int) -> Int  {
    return "\(number)".count
}

private func fetchBaseNumber(number: Int, digit: Int) -> Int {
    if digit > 0 && digit <= numberLength(number: number){
        var numbersArray = [Int]()
        for char in "\(number)"{
            numbersArray.append(Int("\(char)")!)
        }
        return numbersArray[numbersArray.count - digit]

    }
    return 0
}

func radixSort(list: [Int]) -> [Int]{
    var bucket = createBucket()
    let maxNumber = listMaxItem(list: list)
    let maxLength = numberLength(number: maxNumber)
    var tempArray = list
    
    for digit in 0 ... maxLength {
        
        //入桶
        for item in list{
            let baseNumber = fetchBaseNumber(number: item, digit: digit)
            bucket[baseNumber].append(item)
        }
        //出桶
        var index = 0
        for i in 0 ..< bucket.count{
            while !bucket[i].isEmpty{
                tempArray[index] = bucket[i].remove(at: 0)
                index += 1
            }
        }
        
    }
    
    return tempArray
}

