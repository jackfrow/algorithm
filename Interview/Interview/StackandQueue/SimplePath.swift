//
//  SimplePath.swift
//  Interview
//
//  Created by jackfrow on 2019/5/31.
//  Copyright © 2019 jackfrow. All rights reserved.
//

import Foundation

func simplifyPath(path: String) -> String {
    //用数组来实现栈的功能
    var pathStack = [String]()
    //拆分原路径
    let paths = path.components(separatedBy: "/")
    
    for path in paths {
        //对于"."我们直接跳过
        guard path != "." else{
            continue
        }
        //对于".."使用pop操作
        if path == ".."{
            if (pathStack.count > 0){
                pathStack.removeLast()
            }
        }else if path != ""{
            pathStack.append(path)
        }
    }
    
    //将栈中的内容转化为优化后的新路径
    let res = pathStack.reduce(""){
        total , dir in "\(total)/\(dir)"
        
    }
    

    //注意空路径的结果是"/"
    return res.isEmpty ? "/" : res
}
