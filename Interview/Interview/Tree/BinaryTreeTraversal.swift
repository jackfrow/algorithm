//
//  BinaryTreeTraversal.swift
//  Interview
//
//  Created by jackfrow on 2019/5/31.
//  Copyright © 2019 jackfrow. All rights reserved.
//

import Foundation

//用栈实现的前序遍历

func preOrderTraversal(root: TreeNode? ) -> [Int] {
    
    var res  = [Int]()
    var stack = [TreeNode]()
    var node = root
    
    while !stack.isEmpty || node != nil {
        
        if node != nil{
            res.append(node!.val)
            stack.append(node!)
            node = node!.left
        }else{
            node = stack.removeLast().right
        }
        
    }
    
    return res
    
}


//二叉树的层级遍历

func levelOrder(root: TreeNode?) -> [[Int]] {
    var res = [[Int]]()
    //用数组来实现队列
    var queue = [TreeNode]()
    if let root = root {
        queue.append(root)
    }
    while queue.count > 0 {
        let size = queue.count
        var level = [Int]()
        
        for _ in 0 ..< size{
            let node = queue.removeFirst()
            level.append(node.val)
            if let left = node.left{
                queue.append(left)
            }
            if let right = node.right{
                queue.append(right)
            }
        }
       
        res.append(level)
        
    }
    
    return res
    
}
