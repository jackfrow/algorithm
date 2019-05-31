//
//  TreeValidBST.swift
//  Interview
//
//  Created by jackfrow on 2019/5/31.
//  Copyright © 2019 jackfrow. All rights reserved.
//

import Foundation



//判断是否为查找二叉树，即所有左子树小于根节点，所有右字子树大于根节点
func isValidBST(root: TreeNode?) -> Bool {

    return _helper(node: root, nil, nil)

}


private func _helper(node: TreeNode?,_ min: Int?, _ max: Int?) -> Bool{
    
    guard let node = node else {
        return true
    }
    

    //所有右字数节点的值必须大于根节点的值
    if let min = min, node.val <= min{
        return false
    }
    //所有左子树节点的值必须小于根节点的值
    if let max = max,node.val >= max {
        return false
    }
    return _helper(node: node.left, min, node.val) && _helper(node: node.right, node.val, max)
}
