//
//  reverseString.swift
//  Interview
//
//  Created by jackfrow on 2019/5/30.
//  Copyright © 2019 jackfrow. All rights reserved.
//

import Foundation
//给出一个字符串，要求将其按照单词顺序进行反转

fileprivate func reverse<T>(_ chars: inout [T] ,_ start : Int, _ end : Int)  {
    
    var start = start, end = end
    while start < end {
       swap(&chars, start, end)
        start += 1
        end -= 1
    }
}

fileprivate func swap<T>(_ chars: inout [T] , _ p : Int ,_ q : Int)  {
    (chars[p], chars[q]) = (chars[q] , chars[p])
}


func reverWords(s : String?) -> String? {
    guard let s = s else {
        return nil
    }
    
    var chars = Array(s), start = 0
    reverse(&chars, 0, chars.count - 1)
    for i in 0 ..< chars.count {
        if i == chars.count - 1 || chars[i + 1] == " "{
            reverse(&chars, start, i)
            start = i + 2
        }
    }
    
    return String(chars)
    
}
