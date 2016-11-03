//
//  Problem9.swift
//  ProjectEulerSwift
//
//  Created by Andrew Budziszek on 10/26/16.
//  Copyright © 2016 Andrew Budziszek. All rights reserved.
//
//
//A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
//                                                                        
//                                                                        a^2 + b^2 = c^2
//    For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
//
//There exists exactly one Pythagorean triplet for which a + b + c = 1000.
//Find the product abc.

import Foundation

class Problem9{
    func PythagoreanTriplet() -> Int {

        var c : Int = -1
        for a in 0...1000{
            for b in 0...1000{
                c = Int(sqrt(Double((a ^^ 2) + (b ^^ 2))))
                if a + b + c == 1000 && (a < b && b < c) && (a^^2) + (b^^2) == (c^^2){
                    return a * b * c
                }
            }
        }
     
        return -1
    }
    
}

precedencegroup PowerPrecedence { higherThan: MultiplicationPrecedence }
infix operator ^^ : PowerPrecedence
func ^^ (radix: Int, power: Int) -> Int {
    return Int(pow(Double(radix), Double(power)))
}
