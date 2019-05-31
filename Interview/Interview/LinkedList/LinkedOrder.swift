//
//  LinkedOrder.swift
//  Interview
//
//  Created by jackfrow on 2019/5/31.
//  Copyright © 2019 jackfrow. All rights reserved.
//

import Foundation

class ListNode{
    var val : Int
    var next : ListNode?
    
    init(_ val : Int) {
        self.val = val
    }
    
}

///给出一个链表和一个值X，要求将链表中所有小于x的值放到左边，所有大于或等于x的值放到右边，并且原链表的节点顺序不能变
func partition(_ head: ListNode? ,_ x: Int) -> ListNode? {
    //引入dummy节点
    let preDummy = ListNode(0), postDummy = ListNode(0)
    var prev = preDummy,post = postDummy
    var node = head
    
    //用尾插法处理左边和右边
    while node != nil {
        if node!.val < x{
            prev.next = node
            prev = node!
        }else{
            post.next = node
            post = node!
        }
        
        node = node!.next
    }
    
    //处理不需要的后续节点
    post.next = nil
    prev.next = postDummy.next
    
    return preDummy.next
    
}




///给出一个链表和一个值x，要求只保留链表中所有小于x的值，并且原链表x中的节点顺序不能变
func getLeftList(_ head: ListNode? , _ x: Int) -> ListNode? {
    
    let dummy = ListNode(0)
    var pre  = dummy, node = head
    while node != nil {
        if node!.val < x{
            pre.next = node
            pre = node!
        }
        node = node!.next
        
    }
    
    //去掉后续不需要的节点
    pre.next = nil
    
    return dummy.next
    
    
}
