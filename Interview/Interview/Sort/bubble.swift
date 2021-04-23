//
//  bubble.swift
//  Interview
//
//  Created by jackfrow on 2019/6/1.
//  Copyright © 2019 jackfrow. All rights reserved.
//


///参考文章:http://www.cocoachina.com/ios/20180412/22988.html

import Foundation
//冒泡排序:
//冒泡排序是一种简单的排序算法。它重复地走访过要排序的数列，一次比较两个元素，如果它们的顺序错误就把它们交换过来。走访数列的工作是重复地进行直到没有再需要交换，也就是说该数列已经排序完成。这个算法的名字由来是因为越小的元素会经由交换慢慢“浮”到数列的顶端。

func bubbleSort(_ array: inout [Int]) -> [Int] {
    
    
    let n = array.count
  
    for i in  0..<n {
        var flag = true
        
        for j in 0..<(n-1-i){
            if  array[j] > array[j+1]{
                let temp = array[j]
                array[j] = array[j+1]
                array[j+1] = temp
                flag = false
//                array.swapAt(j, j+1)
            }
        }
        
        if flag{
            break;
        }
        
    }
    
    return array
    
}
