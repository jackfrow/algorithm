//
//  HeapSort.swift
//  Interview
//
//  Created by jackfrow on 2019/6/4.
//  Copyright © 2019 jackfrow. All rights reserved.
//

import Foundation

//　　堆排序的基本思想是：将待排序序列构造成一个大顶堆，此时，整个序列的最大值就是堆顶的根节点。将其与末尾元素进行交换，此时末尾就为最大值。然后将剩余n-1个元素重新构造成一个堆，这样会得到n个元素的次小值。如此反复执行，便能得到一个有序序列了

func heapSort(sortArray: [Int]) -> [Int]  {
    
    var tempArray = sortArray
    let count = tempArray.count

    var i = tempArray.count / 2 - 1
    
    //1.构建大顶堆(因为二叉树需要由3个节点构成，而除了最终的根节点，其余的节点都可以复用1次，所以最后的根节点为tempArray.count / 2 - 1)
    while i >= 0  {
        adjustHeap(list: &tempArray, i: i, length: count)
        i -= 1
    }
    
    //2.调整堆结构+交换堆顶元素与末尾元素
    var j  = count - 1
    while j > 0 {
        tempArray.swapAt(0, j)
        adjustHeap(list: &tempArray, i: 0, length: j)//从第一个根节点开始排序
        j -= 1
    }
    
    return tempArray
    
}


fileprivate func adjustHeap(list: inout [Int], i:  Int, length: Int) {

  var i = i
  let temp = list[i]
    var k  = 2*i + 1
    while k < length {
        if k+1 < length && list[k] < list[k+1]{
            k += 1
        }
        if list[k] > temp{
            list[i] = list[k]
            i = k //将当前根节点指向子节点再次进行调整，因为子树中的顺序可能被破坏
        }else{
            break
        }
        
        k = 2*k + 1 //从刚刚调整过的树的左子节点开始
    }
    
     list[i] = temp
}
