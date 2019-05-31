//
//  TreeDepth.swift
//  Interview
//
//  Created by jackfrow on 2019/5/31.
//  Copyright © 2019 jackfrow. All rights reserved.
//

import Foundation

public class TreeNode{
    
    public var val : Int
    public var left : TreeNode?
    public var right : TreeNode?
    public init(_ val: Int) {
        self.val = val
    }
    
}


//求二叉树的最大深度

func maxDepth(root: TreeNode?) -> Int {
    guard let root = root else {
        return 0
    }
    return max(maxDepth(root: root.left), maxDepth(root: root.right)) + 1
}
