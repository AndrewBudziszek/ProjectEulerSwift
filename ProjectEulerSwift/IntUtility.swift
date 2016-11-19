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
    
}
