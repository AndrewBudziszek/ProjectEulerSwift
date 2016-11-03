//
//  Problem7.swift
//  ProjectEulerSwift
//
//  Created by Andrew Budziszek on 10/26/16.
//  Copyright © 2016 Andrew Budziszek. All rights reserved.
//By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
//What is the 10 001st prime number?

import Foundation

class Problem7{
    func NthPrimeNumber(num :Int) -> Int {
        var nthPrime = 0
        var nthPrimeNumber = -1
        var i = 0
        
        while nthPrime != num {
            if isPrime(num: i) {
                nthPrime += 1
                nthPrimeNumber = i
            }
            i += 1
        }
        
        return nthPrimeNumber
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
