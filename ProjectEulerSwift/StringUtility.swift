//
//  StringUtility.swift
//  ProjectEulerSwift
//
//  Created by Andrew Budziszek on 10/26/16.
//  Copyright © 2016 Andrew Budziszek. All rights reserved.
//

import Foundation

extension String {
    func charAt(_ n: Int) -> String {
        if n > self.characters.count - 1 || n < 0 {
            return ""
        }
        return String(self[self.characters.index(self.startIndex, offsetBy: n)])
    }
    
    func length() -> Int {
        return self.characters.count
    }
    
    func substring(_ startIndex: Int) -> String {
        return self.substring(startIndex, self.characters.count - 1)
    }
    
    func substring(_ startIndex: Int,_ endIndex: Int) -> String {
        if startIndex < 0 || startIndex > self.length() || endIndex > self.length() || endIndex < 0 {
            return ""
        }
        return self[self.characters.index(self.startIndex, offsetBy: startIndex)...self.characters.index(self.startIndex, offsetBy: endIndex)]
    }
    
    func substring(_ startIndex: Int, length: Int) -> String {
        if startIndex + length > self.characters.count {
            return ""
        }
        return substring(startIndex, startIndex + length - 1)
    }
    
    //TODO
    func stringParse(_ startIndex: Int, fromString: String, toString: String, keepFromString: Bool, keepToString: Bool) -> String {
        var retString = self.substring(startIndex)
        retString = retString.substring(retString.indexOf(fromString))
        retString = retString.substring(0, retString.indexOf(toString) + toString.length())
        if keepFromString && keepToString {
            
        }
        return ""
    }
    
    func indexOf(_ search: String) -> Int {
        if self.contains(search) {
            var currentStartIndex = 0
            while currentStartIndex + search.characters.count <= self.characters.count {
                if self.substring(currentStartIndex, length: search.characters.count) == search {
                    return currentStartIndex
                }
                currentStartIndex += 1
            }
        }
        return -1
    }
}
