//
//  Problem14.swift
//  ProjectEulerSwift
//
//  Created by Andrew Budziszek on 11/6/16.
//  Copyright © 2016 Andrew Budziszek. All rights reserved.
//
/*
 The following iterative sequence is defined for the set of positive integers:
 
 n → n/2 (n is even)
 n → 3n + 1 (n is odd)
 
 Using the rule above and starting with 13, we generate the following sequence:
 
 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
 It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.
 
 Which starting number, under one million, produces the longest chain?
 
 NOTE: Once the chain starts the terms are allowed to go above one million.
 */

import Foundation

class Problem14 {
    func CollatzNumber() -> Int{
        var largestCollatzSequence = -1
        var largestCollatzSeqNumber = -1
        for i in 1...1000000{
            var collatzSequence = [Int]()
            var currentCollatzNumber = i
            collatzSequence.append(currentCollatzNumber)
            while currentCollatzNumber != 1 {
                currentCollatzNumber = currentCollatzNumber.isEven() ? currentCollatzNumber / 2 : (currentCollatzNumber * 3) + 1
                collatzSequence.append(currentCollatzNumber)
            }
            if collatzSequence.count > largestCollatzSequence {
                largestCollatzSequence = collatzSequence.count
                largestCollatzSeqNumber = i
            }
        }    
        return largestCollatzSeqNumber
    }
}
