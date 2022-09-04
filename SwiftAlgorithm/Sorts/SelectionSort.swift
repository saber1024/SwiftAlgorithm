//
//  SelectionSort.swift
//  SwiftAlgorithm
//
//  Created by zhu shuai on 2022/9/3.
//

import Foundation

public class SelectionSort<T> where T: Comparable
{
    static func sort(arr : inout [T])
    {
        var min = 0
        for i in 0 ..< arr.count
        {
            min = i
            for j in i + 1 ..< arr.count
            {
                if arr[j] < arr[min]{
                    min = j
                }
            }
            (arr[i],arr[min]) = (arr[min],arr[i])
        }
    }
}
