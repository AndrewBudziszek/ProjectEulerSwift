//
//  Problem21.swift
//  ProjectEulerSwift
//  https://projecteuler.net/problem=21
//
//  Created by Andrew Budziszek on 12/22/16.
//  Copyright © 2016 Andrew Budziszek. All rights reserved.
//
//Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
//If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.
//
//For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.
//
//Evaluate the sum of all the amicable numbers under 10000.
//

import Foundation

class Problem21 {
    var sumOfAmicableNumbers = 0
    var alreadyObserved : [Int] = []
    
    func AmicableNumbers() -> Int{
        var count = 2
        
        while count <= 10000 {
            let a = sumOfDivisors(count)
            let b = sumOfDivisors(a)

            if b == count && a != b && !alreadyObserved.contains(count) {
                alreadyObserved.append(a)
                alreadyObserved.append(b)
                sumOfAmicableNumbers += a + b
            }
            count += 1
        
        }
        
        return sumOfAmicableNumbers
        
    }
    
    func sumOfDivisors(_ n: Int) -> Int {
        var sum = 0
        
        if n / 2 > 0 {
            for i in 1...n / 2 {
                if n % i == 0 {
                    sum += i
                }
            }
        } else {
            return 0
        }
        
        return sum
    }
}
