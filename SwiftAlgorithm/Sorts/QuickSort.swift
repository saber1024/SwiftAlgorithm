//
//  QuickSort.swift
//  SwiftAlgorithm
//
//  Created by zhu shuai on 2022/9/3.
//

import Foundation

class QuickSort<T> where T: Comparable
{
    public static func sort(arr: inout [T], low: Int, high: Int)
    {
        if low < high
        {
            let pi = partition(&arr, low: low, high: high)
            
            sort(arr: &arr, low: low, high: pi - 1)
            
            sort(arr: &arr, low: pi + 1, high: high)
        }
    }
    
    private static func partition(_ a: inout [T], low: Int, high: Int) -> Int
    {
        let pivot = a[high]
        
        var i = low
        for j in low..<high {
            if a[j] <= pivot {
                (a[i], a[j]) = (a[j], a[i])
                i += 1
            }
        }
        (a[i], a[high]) = (a[high], a[i])
        return i
    }
}
