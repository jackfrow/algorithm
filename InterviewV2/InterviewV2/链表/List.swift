//
//  List.swift
//  InterviewV2
//
//  Created by jackfrow on 2021/4/23.
//

import Foundation


class ListNode  {
    var val:Int
    var next:ListNode?
    
    
    init(_ val: Int) {
        self.val = val
        self.next = nil
    }
    
}


class List {
    var head:ListNode?
    var tail:ListNode?
    
    //尾插法
    
    func appendToTail(_ val:Int)  {
        if tail == nil {
            tail = ListNode(val)
            head = tail
        }else{
            tail!.next = ListNode(val)
            tail = tail!.next
        }
    }
    
    //头插法
    func appendToHeader(_ val:Int) {
        
        if head == nil {
            head = ListNode(val)
            tail = head
        }else{
           let  temp = ListNode(val)
            temp.next = head
            head = temp
        }
    }
    
    func createListWithNodes(items:[Int]) -> ListNode? {
        
        for item in items {
            appendToTail(item)
        }
        return head
        
    }
    
    func verifyNode(node :ListNode?,items:[Int]) -> Bool {
        

        var head = node
        
        var someInts = [Int]()
        
        while head != nil {
            someInts.append(head!.val)
            head = head!.next
        }
        
        
        print("someInts",someInts)
        
        return someInts == items
    }
    
}


//题目:给出一个链表和一个值X，要求将链表中所有小于x的值放到左边，所有大于或等于x的值放到右边，并且原链表的节点顺序不能变
//注意链表中可能产生环

func partition(_ head: ListNode? ,_ x: Int) -> ListNode? {
   //引入dummy节点
    
    let prevDummy = ListNode(0),postDummy = ListNode(0)
    var prev = prevDummy,post = postDummy
    
    var node = head
    
    //用尾插法处理左边和右边
    while node != nil {
        if node!.val < x {
            prev.next = node
            prev = node!
        }else{
            post.next = node
            post = node!
        }
        node = node!.next
    }
    
    //防止构成环
    post.next = nil
    
    //左右拼接
    prev.next = postDummy.next
    
    return prevDummy.next
    
}

//错误实现版本
//func partition()  {
    //    let left = ListNode(0)
    //    let right = ListNode(0)
    //
    //
    //    while head.next != nil {
    //
    //        if head.val < x {
    //            left.next = head
    //        }else{
    //            right.next = head
    //        }
    //
    //        head = head.next!
    //
    //    }
    //
    //    left.next = right.next
    //    return left.next
//}

//题目:检测链表中是否有环
//思路分析:利用两个速度不一样的指针,对链表进行访问,如果有环,指针就会重合

func hasCycle(_ head: ListNode?) -> Bool {
    var slow = head
    var fast = head
    
    while fast != nil && fast!.next != nil {
        slow = slow!.next
        fast = fast!.next!.next
        
        if slow === fast {
            return true
        }
    
    }
    return false
}



//题目:删除链表中倒数第n个节点，例:1->2->3->4->5, n =2 ,返回 1->2->3->5。
//注意:给定n的长度小于等于链表的长度
//思路,利用两个速度一样的指针向后移动,第二个指针开始就落后头节点n个位置,当第二个指针为nil后,第一个指针就距离尾部n个节点
func removeNthFormEnd(head:ListNode?,_ n:Int) -> ListNode? {
    
    
    guard let head = head else {
        return nil
    }
    
    let dummy = ListNode(0)
    dummy.next = head
    
    var prev:ListNode? = dummy
    var post:ListNode? = dummy
    
    
    //设置后一个节点的初始位置
    for _ in 0 ..< n {
        if post == nil {
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
