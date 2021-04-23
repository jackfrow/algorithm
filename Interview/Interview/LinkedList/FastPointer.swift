//
//  FastPointer.swift
//  Interview
//
//  Created by jackfrow on 2019/5/31.
//  Copyright © 2019 jackfrow. All rights reserved.
//

import Foundation


//判断链表中是否有环
func hasCycle(_ head : ListNode?) -> Bool {
    
    var slow = head
    var fast = head
    
    while fast != nil && fast!.next != nil {
        slow = slow!.next
        fast = fast!.next!.next
        
        if slow === fast{
            return true
        }
    }
    
    return false
    
}

//删除链表中倒数第n个节点。例:1->2->3->4->5, n =2 ,返回 1->2->3->5。
//注意:给定n的长度小于等于链表的长度
func removeNthformEnd(head: ListNode? ,_ n: Int) -> ListNode? {
    
    guard let head = head else {
        return nil
    }
    
    let dummy = ListNode(0)
    dummy.next = head
    var prev: ListNode? = dummy
    var post: ListNode? = dummy
    
    //设置最后一个节点的初始位置
    for _ in 0 ..< n {
        if post == nil{
            break
        }
        post = post!.next
    }
    
    //同时移动前后节点
    while post != nil && post!.next != nil {
        prev = prev!.next
        post = post!.next
    }
    
    
    
    
    //删除节点
    prev!.next = prev!.next!.next
    
    return dummy.next
    
}
