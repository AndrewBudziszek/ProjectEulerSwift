//
//  Problem5.swift
//  ProjectEulerSwift
//
//  Created by Andrew Budziszek on 9/22/16.
//  Copyright © 2016 Andrew Budziszek. All rights reserved.
//2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
//What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

import Foundation

class Problem5{
    
    func SmallestMultiple() -> Int {
        var i = 1
        while true {
            for j in 1...20{
                if i % j != 0{
                    break
                }
                if j == 20 && i % j == 0{
                    return i
                }
            }
            i += 1
        }
    }
    
}
