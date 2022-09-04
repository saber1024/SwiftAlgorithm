//
//  BinaryTree.swift
//  SwiftAlgorithm
//
//  Created by zhu shuai on 2022/9/4.
//

import Foundation

class Node{
    var val: Int
    var left: Node?
    var right: Node?
    
    init(_ val: Int)
    {
        self.val = val
        left = nil
        right = nil
    }
}

struct BinaryTree
{
    var root: Node
    
    
    init(_ val: Int)
    {
        self.root = Node(val)
    }
    
    mutating func push(val: Int){
        
        let node = Node(val)
        var entry = root
        if val > root.val {
            if root.right == nil {
                root.right = node
                return
            }
            while entry.right != nil
            {
                entry = entry.right!
            }
            entry.right = node
        }else{
            if root.left == nil {
                root.left = node
                return
            }
            while entry.left != nil
            {
                entry = entry.left!
            }
            entry.left = node
        }
    }
    
    func search(_ val: Int) -> Bool
    {
        if root.val == val {
            return true
        }
        return searchNode(val: val, node: root)
    }
    
    mutating func pushs(_ vals: [Int])
    {
        vals.forEach({
            self.push(val: $0)
        })
    }
}

private extension BinaryTree
{
    
    func searchNode(val: Int, node: Node?) -> Bool
    {
        guard node != nil else{
            return false
        }
        let stack = Stack<Node>()
        stack.push(node!)
        var entry = node
        while !stack.empty
        {
            entry = stack.pop()
            if entry == nil {
                return false
            }
            if entry!.val ==  val{
                return true
            }
            
            if entry?.left != nil {
                stack.push(entry!.left!)
            }
            if entry?.right != nil {
                stack.push(entry!.right!)
            }
        }
        return false
    }
}
