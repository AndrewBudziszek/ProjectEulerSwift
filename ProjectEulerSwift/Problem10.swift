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
            if isPrime(num: i) {
                sumOfPrimes += i
            }
        }
        return sumOfPrimes
    }
    
    //Algorithm derived from Wikipedia Pseudocode - https://en.wikipedia.org/wiki/Primality_test
    private func isPrime(num : Int) -> Bool {
        
        if num <= 1{
            return false
        }else if num <= 3{
            return true
        }else if num % 2 == 0 || num % 3 == 0 {
            return false
        }
        
        var i = 5
        while i * i <= num {
            if num % i == 0 || num % (i + 2) == 0 {
                return false
            }
            i = i + 6
        }
        
        return true
    }
}
