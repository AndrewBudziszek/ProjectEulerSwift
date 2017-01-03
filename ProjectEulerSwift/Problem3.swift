//
//  Problem3.swift
//  ProjectEulerSwift
//
//  Created by Andrew Budziszek on 9/19/16.
//  Copyright © 2016 Andrew Budziszek. All rights reserved.
//  Project Euler: Problem 3
//
//  The prime factors of 13195 are 5, 7, 13 and 29.
//
//  What is the largest prime factor of the number 600851475143?
//
import Foundation

func p3() -> Int {
    return largestPrimeFactor(n: 600851475143)
}

private func largestPrimeFactor(n: Int) -> Int{
    var n = n //Swift 3 doesn't allow var parameters anymore.
    var largestPrimeFactor = -1
    
    for i in stride(from: 3, to: Int(sqrt(Double(n))), by: 2){
        while(n % i == 0){
            largestPrimeFactor = i
            n /= i
        }
    }

    return largestPrimeFactor
}

