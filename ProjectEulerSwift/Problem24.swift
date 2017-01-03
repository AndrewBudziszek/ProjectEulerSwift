
//
//  Problem24.swift
//  ProjectEulerSwift
//
//  Created by Andrew Budziszek on 1/2/17.
//  Copyright © 2017 Andrew Budziszek. All rights reserved.
//A permutation is an ordered arrangement of objects. For example, 3124 is one possible permutation of the digits 1, 2, 3 and 4. If all of the permutations are listed numerically or alphabetically, we call it lexicographic order. The lexicographic permutations of 0, 1 and 2 are:
//
//012   021   102   120   201   210
//
//What is the millionth lexicographic permutation of the digits 0, 1, 2, 3, 4, 5, 6, 7, 8 and 9?
//

import Foundation

func p24() -> Int {
    return LexicographicPermuations()
}

private func LexicographicPermuations() -> Int {
    var nthPermuation = 1
    var numberToPermute = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    
    while nthPermuation < 1000000 {
        var kthIndex = 0
        var ithIndex = 0
        
        for i in 0...numberToPermute.count - 2 {
            if numberToPermute[i] < numberToPermute[i + 1] {
                kthIndex = i
                ithIndex = kthIndex
            }
        }
        
        for i in kthIndex + 1...numberToPermute.count - 1 {
            if numberToPermute[kthIndex] < numberToPermute[i] {
                ithIndex = i
            }
        }
        
        let temp = numberToPermute[kthIndex]
        numberToPermute[kthIndex] = numberToPermute[ithIndex]
        numberToPermute[ithIndex] = temp
        
        var subArray:[Int] = Array(numberToPermute.dropFirst(kthIndex + 1))
        subArray = subArray.reversed()
        numberToPermute = Array(numberToPermute.dropLast(subArray.count))
        numberToPermute += subArray
        nthPermuation += 1
    }
    
    var millionthPermuation = 0
    var place = 1
    
    for n in numberToPermute.reversed() {
        millionthPermuation = (n * place) + millionthPermuation
        place *= 10
    }
    
    return millionthPermuation
}
