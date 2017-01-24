//
//  Problem28.swift
//  ProjectEulerSwift
//
//  Created by Andrew Budziszek on 1/23/17.
//  Copyright © 2017 Andrew Budziszek. All rights reserved.
//
/*
 
 Starting with the number 1 and moving to the right in a clockwise direction a 5 by 5 spiral is formed as follows:
 
 21 22 23 24 25
 20  7  8  9 10
 19  6  1  2 11
 18  5  4  3 12
 17 16 15 14 13
 
 It can be verified that the sum of the numbers on the diagonals is 101.
 
 What is the sum of the numbers on the diagonals in a 1001 by 1001 spiral formed in the same way?
 
 */

import Foundation

func p28() -> Int {
    return NumberSpiralDiagonals()
}

private func NumberSpiralDiagonals() -> Int {
    var sumOfDiag = 1
    var layer = 0
    var add = 2
    var position = 1
    var currentNum = 3
    
    while layer != 500 {
        while position <= 4 {
            sumOfDiag += currentNum
            currentNum += add
            position += 1
        }
        currentNum += 2
        layer += 1
        add += 2
        position = 1
    }
    
    return sumOfDiag
}
