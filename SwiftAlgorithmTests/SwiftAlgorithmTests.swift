//
//  SwiftAlgorithmTests.swift
//  SwiftAlgorithmTests
//
//  Created by zhu shuai on 2022/9/4.
//

import XCTest
@testable import SwiftAlgorithm

class SwiftAlgorithmTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }


    private func generateRandomArray(bound: Int) -> [Int]
    {
        var arr = [Int]()
        
        for _ in 0 ..< bound
        {
            let ele = Int.random(in: 0...100)
            arr.append(ele)
        }
        return arr
    }
    
    
    private func isSorted(arr: [Int]) -> Bool
    {
        for i in 1 ..< arr.count
        {
            if arr[i] < arr[i - 1]
            {
                return false
            }
        }
        return true
    }
    
    func testBinaryTree() throws
    {
        let array = [2,14,23,5,6,7,9,15,34,64,55,123]
        
        var tree = BinaryTree(array[0])
        
        tree.pushs(array)
        
        XCTAssertTrue(tree.search(9))
    }
    
    
    func testQuickSort() throws
    {
        for _ in 0 ..< 10000
        {
            var arr = generateRandomArray(bound: 10)
            
            QuickSort<Int>.sort(arr: &arr, low: 0, high: arr.count - 1)
            
            XCTAssertTrue(isSorted(arr: arr))
        }
    }
    
    
    func testMergeSort() throws
    {
        for _ in 0 ..< 10000
        {
            var arr = generateRandomArray(bound: 10)
            
            MergeSort<Int>.sort(arr: &arr)
            
            XCTAssertTrue(isSorted(arr: arr))
        }
    }
    
    func testSelectionSort() throws
    {
        for _ in 0 ..< 10000
        {
            var arr = generateRandomArray(bound: 10)
            
            SelectionSort<Int>.sort(arr: &arr)
            
            XCTAssertTrue(isSorted(arr: arr))
        }
    }

}
