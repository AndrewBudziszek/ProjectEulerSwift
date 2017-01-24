//
//  Problem30.swift
//  ProjectEulerSwift
//
//  Created by Andrew Budziszek on 1/23/17.
//  Copyright © 2017 Andrew Budziszek. All rights reserved.
//
/*
 
 Surprisingly there are only three numbers that can be written as the sum of fourth powers of their digits:
 
 1634 = 14 + 64 + 34 + 44
 8208 = 84 + 24 + 04 + 84
 9474 = 94 + 44 + 74 + 44
 As 1 = 14 is not a sum it is not included.
 
 The sum of these numbers is 1634 + 8208 + 9474 = 19316.
 
 Find the sum of all the numbers that can be written as the sum of fifth powers of their digits.
 
 */

import Foundation

func p30() -> Int {
    return DigitFifthPowers()
}

private func DigitFifthPowers() -> Int {
    var sumOfDigitFifthPowers = 0
    
    for i in 2...5000000 {
        var sumOfFifths = 0
        var currentNum : String = "\(i)"
        
        for c in currentNum.characters {
            sumOfFifths += Int(pow(Double(String(c))!, 5))
        }
        
        if sumOfFifths == i {
            sumOfDigitFifthPowers += sumOfFifths
        }
    }
    
    return sumOfDigitFifthPowers
}
