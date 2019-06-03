//
//  shellSort.swift
//  Interview
//
//  Created by jackfrow on 2019/6/3.
//  Copyright © 2019 jackfrow. All rights reserved.
//

import Foundation
//希尔排序（shell sort）这个排序方法又称为缩小增量排序，是1959年D·L·Shell提出来的。该方法的基本思想是：设待排序元素序列有n个元素，首先取一个整数increment（小于n）作为间隔将全部元素分为increment个子序列，所有距离为increment的元素放在同一个子序列中，在每一个子序列中分别实行直接插入排序。然后缩小间隔increment，重复上述子序列划分和排序工作。直到最后取increment=1，将所有元素放在同一个子序列中排序为止。
//（2）由于开始时，increment的取值较大，每个子序列中的元素较少，排序速度较快，到排序后期increment取值逐渐变小，子序列中元素个数逐渐增多，但由于前面工作的基础，大多数元素已经基本有序，所以排序速度仍然很快。

//---------------------
//作者：sparkle merit
//来源：CSDN
//原文：https://blog.csdn.net/weixin_37818081/article/details/79202115
//版权声明：本文为博主原创文章，转载请附上博文链接！

//冒泡排序实现的希尔排序
func shellSorBad(sortArray: [NSInteger] ) -> [NSInteger]  {

    var tempArray = sortArray
    let sortCount = sortArray.count
    
    var gap = 1
    
    gap = sortCount/2 + 1
    
    while gap > 0 {
        var i = 0
        while i < sortCount{
            var  j  = i
            while j < sortCount - gap{
                if tempArray[j] > tempArray[j+gap]{
                    let temp = tempArray[j]
                    tempArray[j] = tempArray[j+gap]
                    tempArray[j+gap] = temp
                }
                j += gap
            }
            i += 1
        }
        gap -= 1
    }
    
    return tempArray
    
}


func shellSort(sortArray: [NSInteger] ) -> [NSInteger]  {
    
    var tempArray = sortArray
    let sortCount = sortArray.count
    var increment = sortArray.count
    
    repeat {
        increment = increment/3 + 1
        for i in increment ..< sortCount {
            let tempValue = tempArray[i]
            if tempValue < tempArray[i-increment]{
                var j = i - increment
                repeat{
                    tempArray[j+increment] = tempArray[j]
                    j -= increment
                }while j > 0 && tempArray[j] > tempValue
                tempArray[j+increment] = tempValue
            }
            
        }
        
    }while increment > 1
    
    return tempArray
    
}

//void shell_sort(const int start, const int end) {
//    int increment = end - start + 1;    //初始化划分增量
//    int temp{ 0 };
//    do {    //每次减小增量，直到increment = 1
//        increment = increment / 3 + 1;
//        for (int i = start + increment; i <= end; ++i) {    //对每个划分进行直接插入排序
//            if (numbers[i - increment] > numbers[i]) {
//                temp = numbers[i];
//                int j = i - increment;
//                do {    //移动元素并寻找位置
//                    numbers[j + increment] = numbers[j];
//                    j -= increment;
//                } while (j >= start && numbers[j] > temp);
//                numbers[j + increment] = temp;  //插入元素
//            }
//        }
//    } while (increment > 1);
//}

