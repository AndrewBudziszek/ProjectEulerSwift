//
//  Problem26.swift
//  ProjectEulerSwift
//
//  Created by Andrew Budziszek on 1/17/17.
//  Copyright © 2017 Andrew Budziszek. All rights reserved.
//
//A unit fraction contains 1 in the numerator. The decimal representation of the unit fractions with denominators 2 to 10 are given:
//
//1/2	= 	0.5
//1/3	= 	0.(3)
//1/4	= 	0.25
//1/5	= 	0.2
//1/6	= 	0.1(6)
//1/7	= 	0.(142857)
//1/8	= 	0.125
//1/9	= 	0.(1)
//1/10	= 	0.1
//Where 0.1(6) means 0.166666..., and has a 1-digit recurring cycle. It can be seen that 1/7 has a 6-digit recurring cycle.
//
//Find the value of d < 1000 for which 1/d contains the longest recurring cycle in its decimal fraction part.
//
//

import Foundation

func p26() -> Int {
    return ReciprocalCycles()
}

private func ReciprocalCycles() -> Int {
    var repeatingLength = 0
    
    for i in stride(from: 1000, to: 2, by: -1) {
        if repeatingLength >= i {
            break
        }
        
        var remainders:[Int] = [Int](repeating: 0, count: 1000)
        var currentValue = 1
        var place = 0
        
        while remainders[currentValue] == 0 && currentValue != 0 {
            remainders[currentValue] = place
            currentValue *= 10
            currentValue %= i
            place += 1
        }
        
        if place - remainders[currentValue] > repeatingLength {
            repeatingLength = (place - remainders[currentValue])
        }
    }
    return repeatingLength + 1
}
