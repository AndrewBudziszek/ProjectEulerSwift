//
//  Problem4.swift
//  ProjectEulerSwift
//
//  Created by Andrew Budziszek on 9/22/16.
//  Copyright © 2016 Andrew Budziszek. All rights reserved.
//  Project Euler: Problem 4
//
//  A palindromic number reads the same both ways. The largest palindrom made from the product of two 2-digit numbers i 9009 = 91 x 99.
//  Find the largest palindrome made from the product of two 3-digit numbers.
//

import Foundation

class Problem4 {
    func LargestPalindromeProduct3Digits() -> Int {
        var largestPalindrome = -1
        
        for i in 100...999{
            for j in stride(from: 999, to: 100, by: -1){
                if String(String(i * j).characters.reversed()) == String(String(i * j).characters){
                    if i * j > largestPalindrome{
                        largestPalindrome = i * j
                    }
                }
            }
        }
        return largestPalindrome
    }
}
