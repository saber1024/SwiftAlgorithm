//
//  MergeSort.swift
//  SwiftAlgorithm
//
//  Created by zhu shuai on 2022/9/3.
//

import Foundation

public class MergeSort<T> where T: Comparable
{
    static func sort(arr: inout [T])
    {
        
        guard arr.count >= 2 else{
            return
        }
        
        let high = arr.count
        let middle = high >> 1
        
        var left = Array(arr[..<middle])
        var righ = Array(arr[middle..<arr.count])
        
        sort(arr: &left)
        sort(arr: &righ)
        
        merge(arr: &arr, left: left, righ: righ)
    }
    
    static func merge(arr: inout [T], left: [T], righ: [T])
    {
        var i = 0, j = 0, k = 0
        
        while i < left.count && j < righ.count
        {
            if left[i] <= righ[j]{
                arr[k] = left[i]
                i += 1
            }else{
                arr[k] = righ[j]
                j += 1
            }
            k += 1
        }
        
        while i < left.count {
            arr[k] = left[i]
            i += 1
            k += 1
        }
        
        while j < righ.count {
            arr[k] = righ[j]
            j += 1
            k += 1
        }
    }
}
