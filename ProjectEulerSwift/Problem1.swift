//
//  Problem1.swift
//  ProjectEulerSwift
//
//  Created by Andrew Budziszek on 9/19/16.
//  Copyright © 2016 Andrew Budziszek. All rights reserved.
//  Project Euler: Problem 1
//  If we list all the natural numbers below 10 that are multiples of 3 or 5,
//  we get 3, 5, 6, and 9. The sum of these multiples is 23.
//
//  Find the sum of all the multiples of 3 or 5 below 1000
//

class Problem1 {
    
    func sumMultiples(upTo: Int) -> Int {
        if(upTo < 3){
            return 0
        }
        return upTo % 3 == 0 || upTo % 5 == 0 ? sumMultiples(upTo: upTo - 1) + upTo : sumMultiples(upTo: upTo - 1)
    }
    
}
