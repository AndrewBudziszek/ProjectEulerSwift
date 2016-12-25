//
//  Problem22.swift
//  ProjectEulerSwift
//
//  Created by Andrew Budziszek on 12/24/16.
//  Copyright © 2016 Andrew Budziszek. All rights reserved.
//
//Using names.txt (right click and 'Save Link/Target As...'), a 46K text file containing over five-thousand first names, begin by sorting it into alphabetical order. Then working out the alphabetical value for each name, multiply this value by its alphabetical position in the list to obtain a name score.
//
//For example, when the list is sorted into alphabetical order, COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN would obtain a score of 938 × 53 = 49714.
//
//What is the total of all the name scores in the file?
//

import Foundation


class Problem22 {
    func nameScores() -> Int{
        let namesFile = "namesProblem22.txt"
        let docDirectory = try? FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
        var runningTotal = 0
        
        if let fileURL = docDirectory?.appendingPathComponent(namesFile) {
            let namesString = try? String(contentsOf: fileURL).replace(target: "\"", withString: "").lowercased().characters.split(separator: ",").map(String.init).sorted()
            var currentIndex = 1
            
            for name in namesString! {
                var nameTotal = 0
                for character:Character in name.characters {
                    nameTotal += Int(character.asciiValue!) - 96
                }
                runningTotal += nameTotal * currentIndex
                currentIndex += 1
            }
        }
        return runningTotal
    }
}
