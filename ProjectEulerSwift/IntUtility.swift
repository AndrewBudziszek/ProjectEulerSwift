//
//  IntUtility.swift
//  ProjectEulerSwift
//
//  Created by Andrew Budziszek on 11/6/16.
//  Copyright © 2016 Andrew Budziszek. All rights reserved.
//

import Foundation

extension Int {
    
    func squareroot() -> Int {
        return Int(sqrt(Double(self)))
    }
    
    func isEven() -> Bool {
        return self % 2 == 0
    }
    
    func isOdd() -> Bool {
        return self % 2 != 0
    }
    
    func isPrime() -> Bool {
        
        if self <= 1{
            return false
        }else if self <= 3{
            return true
        }else if self % 2 == 0 || self % 3 == 0 {
            return false
        }
        
        var i = 5
        while i * i <= self {
            if self % i == 0 || self % (i + 2) == 0 {
                return false
            }
            i = i + 6
        }
        
        return true
    }
}
