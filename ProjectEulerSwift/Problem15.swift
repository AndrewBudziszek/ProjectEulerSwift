//
//  Problem15.swift
//  ProjectEulerSwift
//
//  Created by Andrew Budziszek on 11/7/16.
//  Copyright © 2016 Andrew Budziszek. All rights reserved.
//
/*
Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.
 
 See https://projecteuler.net/problem=15 for image.
 
How many such routes are there through a 20×20 grid?
*/

import Foundation

class Problem15 {
    //Lattice Path Explanation - https://en.wikipedia.org/wiki/Lattice_path (n+k) choose n
    func LatticePathCombinations() -> String {
        return "Problem 15: DONE IN PYTHON. SEE Problem15.py"
    }
    
    func factorial(_ n: Int) -> Int {
        if n <= 1 {
            return 1
        }
        return n * factorial(n - 1)
    }
}
