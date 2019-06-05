//
//  SearchInterView.swift
//  Interview
//
//  Created by jackfrow on 2019/6/5.
//  Copyright © 2019 jackfrow. All rights reserved.
//

import Foundation


//1.版本崩溃
//现在已知一个产品有n个版本，而且有一个检测算法func isBadVersion(version: Int) -> Bool可以判断一个版本是否崩溃。假设这个产品的最新版本崩溃，求第一个崩溃的版本.(若第n个版本崩溃，则n+1一定会崩溃)

func findFirstBadVersion(version n: Int) -> Int {
   //处理特殊情况
    guard n >= 1 else {
        return -1
    }
    var left = 1,right = n,mid = 0

    while left < right {
        mid = (right - left)/2 + left
        if isBadVersion(version: mid){
            right = mid
        }else{
            left = mid + 1
        }
    }
    
    return left

}

func isBadVersion(version: Int) -> Bool{
    
    if version >= 3 {
        return true
    }else{
        return false
    }
    
}
