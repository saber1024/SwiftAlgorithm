//
//  Stack.swift
//  SwiftAlgorithm
//
//  Created by zhu shuai on 2022/9/4.
//

import Foundation

class Stack<T>
{
    private var arr = [T]()
    
    private var top = 0
    
    public var empty: Bool{
        return top == 0
    }
    
    public func push(_ ele: T)
    {
        ///假设最大值
        if top == 256 {
            return
        }
        arr.append(ele)
        top += 1
    }
    
    func pop()-> T?
    {
        if top == 0
        {
            return nil
        }
        let ele = arr.last!
        arr.removeLast()
        top -= 1
        return ele
    }
}
