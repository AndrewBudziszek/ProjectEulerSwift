//
//  Problem17.swift
//  ProjectEulerSwift
//
//  Created by Andrew Budziszek on 11/8/16.
//  Copyright © 2016 Andrew Budziszek. All rights reserved.
//
/*
 If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
 
 If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?
 
 
 NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.
 */

import Foundation

class Problem17 {
    
    func NumberLetterCounts() -> Int {
        let singleArr = ["", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
        let tensArr = ["", "ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
        var numberAggregator = ""
        
        for i in 1..<1000 {
            let singlePlace = i % 100 < 20 && i % 100 >= 10 ? "" : singleArr[i % 10]
            let tensPlace = i % 100 < 20 && i % 100 >= 10 ? singleArr[i % 100] : tensArr[((i / 10) % 10)]
            let hundredPlace = singleArr[((i / 100) % 10)]
            var numToAdd = ""
            
            if ((i / 100) % 10) > 0 {
                numToAdd += hundredPlace + "hundred"
                if i > 100 && i % 100 != 0 {
                    numToAdd += "and"
                }
            }
            numToAdd += tensPlace + singlePlace
            print(numToAdd)
            numberAggregator += numToAdd
        }
        
        numberAggregator += "onethousand"
        return numberAggregator.characters.count
        
    }
}
