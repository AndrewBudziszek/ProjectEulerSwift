//
//  Problem10.swift
//  ProjectEulerSwift
//
//  Created by Andrew Budziszek on 10/28/16.
//  Copyright © 2016 Andrew Budziszek. All rights reserved.
//The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
//Find the sum of all the primes below two million.

import Foundation

class Problem10 {
    
    func SumOfPrimesBelow(n : Int) -> Int {
        var sumOfPrimes = 0
        for i in 1...n {
            if i.isPrime() {
                sumOfPrimes += i
            }
        }
        return sumOfPrimes
    }
    
}
