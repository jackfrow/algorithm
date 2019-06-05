//
//  Search.swift
//  Interview
//
//  Created by jackfrow on 2019/6/5.
//  Copyright © 2019 jackfrow. All rights reserved.
//

import Foundation

//二分搜索判断数组中是否有需要查找的值
func binarySearch(_ nums: [Int], _ target: Int) -> Bool {
    var left = 0,mid = 0,right = nums.count - 1
    while left <= right {
        mid = (right - left) / 2 + left//这里需要注意，为了避免Stack Overflow，所以没有直接(right + left)/2
        if nums[mid] == target{
            return true
        }else if nums[mid] < target{
            left = mid + 1
        }else{
            right = mid - 1
        }
    }
    return false
}



//已知有很多会议，如果这些会议的时间有重叠，则将他们合并
public class MeetingTime{
    
    public var start: Int
    public var end: Int
    public init(_ start: Int, _ end: Int) {
        self.start = start
        self.end = end
    }
    
}

func merge(meetingTimes: [MeetingTime]) -> [MeetingTime] {
    //处理特殊情况
    guard meetingTimes.count > 1 else {
        return meetingTimes
    }
    
    //排序
    var meetingTimes = meetingTimes.sorted { (start, end) -> Bool in
        if start.start != end.start{
            return start.start < end.start
        }else{
            return start.end < end.end
        }
    }
    
    //新建结果数组
    var res = [MeetingTime]()
    res.append(meetingTimes[0])
    
    //遍历排序所的原数组，并与结果数组归并
    for i in 1 ..< meetingTimes.count {
        let last = res[res.count - 1]
        let current = meetingTimes[i]
        if current.start > last.end{
            res.append(current)
        }else{
            last.end = max(last.end, current.end)
        }
        
    }
    
    return res
}
