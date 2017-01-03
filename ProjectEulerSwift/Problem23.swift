//
//  Problem23.swift
//  ProjectEulerSwift
//  https://projecteuler.net/problem=23
//
//  Created by Andrew Budziszek on 12/25/16.
//  Copyright © 2016 Andrew Budziszek. All rights reserved.
//A perfect number is a number for which the sum of its proper divisors is exactly equal to the number. For example, the sum of the proper divisors of 28 would be 1 + 2 + 4 + 7 + 14 = 28, which means that 28 is a perfect number.
//
//A number n is called deficient if the sum of its proper divisors is less than n and it is called abundant if this sum exceeds n.
//
//As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, the smallest number that can be written as the sum of two abundant numbers is 24. By mathematical analysis, it can be shown that all integers greater than 28123 can be written as the sum of two abundant numbers. However, this upper limit cannot be reduced any further by analysis even though it is known that the greatest number that cannot be expressed as the sum of two abundant numbers is less than this limit.
//
//Find the sum of all the positive integers which cannot be written as the sum of two abundant numbers.
//
// *** Every number greater than 20161 can be expressed as a sum of two abundant numbers. - WorlframMathworld

import Foundation

class Problem23 {
    
    func NonAbundantSums() -> Int {
        var nonAbundantSum = 0
        var abundantList:[Int] = []
        var sumOfAbundants:[Bool] = Array(repeatElement(false, count: 20161 + 1))
        
        for i in 1...20161 {
            if isAbundant(i) {
                abundantList.append(i)
            }
        }
        
        for i in abundantList {
            for j in abundantList {
                if i + j > 20161 {
                    continue
                }
                sumOfAbundants[i + j] = true
            }
        }
        
        for n in 1..<sumOfAbundants.count {
            if sumOfAbundants[n] == false {
                nonAbundantSum += n
            }
        }
        
        return nonAbundantSum
    }
    
    func isAbundant(_ n: Int) -> Bool {
        var total = 0
        
        if n < 12 {
            return false
        }
        for i in 1...Int((n / 2) + 1) {
            if n % i == 0 {
                total += i
            }
        }
        
        return total > n
    }
    
}
