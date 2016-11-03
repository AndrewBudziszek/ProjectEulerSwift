//
//  Problem6.swift
//  ProjectEulerSwift
//
//  Created by Andrew Budziszek on 10/26/16.
//  Copyright © 2016 Andrew Budziszek. All rights reserved.
//
//The sum of the squares of the first ten natural numbers is,

//12 + 22 + ... + 102 = 385
//The square of the sum of the first ten natural numbers is,

//(1 + 2 + ... + 10)2 = 552 = 3025
//Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

//Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

import Foundation

class Problem6{
    func DifferenceSumSquares() -> Int{
        var sumOfSquares = 0
        var squareOfSum = 0
        
        for i in 1...100{
            sumOfSquares += Int(pow(Double(i), 2))
            squareOfSum += i
        }
        squareOfSum = Int(pow(Double(squareOfSum), 2))
        
        return squareOfSum - sumOfSquares
    }
}
