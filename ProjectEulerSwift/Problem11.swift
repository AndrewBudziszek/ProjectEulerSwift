//
//  Problem11.swift
//  ProjectEulerSwift
//
//  Created by Andrew Budziszek on 10/28/16.
//  Copyright © 2016 Andrew Budziszek. All rights reserved.
//
// See - https://projecteuler.net/problem=11
// In the 20x20 grid below, find the greatest product of four adjacent numbers in the same direction
// (up, down, left, right, or diagonally).


import Foundation

var grid = [[Int]]()

class Problem11 {
    
    init() {
        //Initialize 20x20 grid found at https://projecteuler.net/problem=11
        let row1 = [Int](arrayLiteral: 8, 2, 22, 97, 28, 15, 0, 40, 0, 75, 4, 5, 7, 78, 52, 12, 50, 77, 91, 8)
        let row2 = [Int](arrayLiteral: 49, 49, 99, 40, 17, 81, 18, 57, 60, 87, 17, 40, 98, 43, 69, 48, 4, 56, 62, 0)
        let row3 = [Int](arrayLiteral: 81, 49, 31, 73, 55, 79, 13, 29, 93, 71, 40, 67, 53, 88, 30, 3, 49, 13, 36, 65)
        let row4 = [Int](arrayLiteral: 52, 70, 95, 23, 4, 60, 11, 42, 69, 24, 68, 56, 1, 32, 56, 71, 37, 2, 36, 91)
        let row5 = [Int](arrayLiteral: 22, 31, 16, 71, 51, 67, 63, 89, 41, 92, 36, 54, 22, 40, 40, 28, 66, 33, 13, 80)
        let row6 = [Int](arrayLiteral: 24, 47, 32, 60, 99, 3, 45, 2, 44, 75, 33, 53, 78, 36, 84, 20, 35, 17, 12, 50)
        let row7 = [Int](arrayLiteral: 32, 98, 81, 28, 64, 23, 67, 10, 26, 38, 40, 67, 59, 54, 70, 66, 18, 38, 64, 70)
        let row8 = [Int](arrayLiteral: 67, 26, 20, 68, 2, 62, 12, 20, 95, 63, 94, 39, 63, 8, 40, 91, 66, 49, 94, 21)
        let row9 = [Int](arrayLiteral: 24, 55, 58, 5, 66, 73, 99, 26, 97, 17, 78, 78, 96, 83, 14, 88, 34, 89, 63, 72)
        let row10 = [Int](arrayLiteral: 21, 36, 23, 9, 75, 0, 76, 44, 20, 45, 35, 14, 0, 61, 33, 97, 34, 31, 33, 95)
        let row11 = [Int](arrayLiteral: 78, 17, 53, 28, 22, 75, 31, 67, 15, 94, 3, 80, 4, 62, 16, 14, 9, 53, 56, 92)
        let row12 = [Int](arrayLiteral: 16, 39, 5, 42, 96, 35, 31, 47, 55, 58, 88, 24, 0, 17, 54, 24, 36, 29, 85, 57)
        let row13 = [Int](arrayLiteral: 86, 56, 0, 48, 35, 71, 89, 7, 5, 44, 44, 37, 44, 60, 21, 58, 51, 54, 17, 58)
        let row14 = [Int](arrayLiteral: 19, 80, 81, 68, 5, 94, 47, 69, 28, 73, 92, 13, 86, 52, 17, 77, 4, 89, 55, 40)
        let row15 = [Int](arrayLiteral: 4, 52, 8, 83, 97, 35, 99, 16, 7, 97, 57, 32, 16, 26, 26, 79, 33, 27, 98, 66)
        let row16 = [Int](arrayLiteral: 88, 36, 68, 87, 57, 62, 20, 72, 3, 46, 33, 67, 46, 55, 12, 32, 63, 93, 53, 69)
        let row17 = [Int](arrayLiteral: 4, 42, 16, 73, 38, 25, 39, 11, 24, 94, 72, 18, 8, 46, 29, 32, 40, 62, 76, 36)
        let row18 = [Int](arrayLiteral: 20, 69, 36, 41, 72, 30, 23, 88, 34, 62, 99, 69, 82, 67, 59, 85, 74, 4, 36, 16)
        let row19 = [Int](arrayLiteral: 20, 73, 35, 29, 78, 31, 90, 1, 74, 31, 49, 71, 48, 86, 81, 16, 23, 57, 5, 54)
        let row20 = [Int](arrayLiteral: 1, 70, 54, 71, 83, 51, 54, 69, 16, 92, 33, 48, 61, 43, 52, 1, 89, 19, 67, 48)
        
        grid.append(row1)
        grid.append(row2)
        grid.append(row3)
        grid.append(row4)
        grid.append(row5)
        grid.append(row6)
        grid.append(row7)
        grid.append(row8)
        grid.append(row9)
        grid.append(row10)
        grid.append(row11)
        grid.append(row12)
        grid.append(row13)
        grid.append(row14)
        grid.append(row15)
        grid.append(row16)
        grid.append(row17)
        grid.append(row18)
        grid.append(row19)
        grid.append(row20)
    }
    
    func ProductOfGrid() -> Int{
        //Check Up
        var largestProduct = -1
        for row in 0...19{
            for col in 0...19{
                let index = grid[row][col]
                var right = -1, left = -1, down = -1, up = -1, downRight = -1, downLeft = -1, upRight = -1, upLeft = -1
                if col + 3 < 20 {
                    right = index * grid[row][col + 1] * grid[row][col + 2] * grid[row][col + 3]
                }
                if col - 3 >= 0 {
                    left = index * grid[row][col - 1] * grid[row][col - 2] * grid[row][col - 3]
                }
                if row + 3 < 20 {
                    down = index * grid[row + 1][col] * grid[row + 2][col] * grid[row + 3][col]
                }
                if row - 3 >= 0 {
                    up = index * grid[row - 1][col] * grid[row - 2][col] * grid[row - 3][col]
                }
                if row + 3 < 20 && col + 3 < 20 {
                    downRight = index * grid[row + 1][col + 1] * grid[row + 2][col + 2] * grid[row + 3][col + 3]
                }
                if row - 3 >= 0 && col + 3 < 20 {
                    upRight = index * grid[row - 1][col + 1] * grid[row - 2][col + 2] * grid[row - 3][col + 3]
                }
                if row - 3 >= 0 && col - 3 >= 0 {
                    upLeft = index * grid[row - 1][col - 1] * grid[row - 2][col - 2] * grid[row - 3][col - 3]
                }
                if row + 3 < 20 && col - 3 >= 0 {
                    downLeft = index * grid[row + 1][col - 1] * grid[row + 2][col - 2] * grid[row + 3][col - 3]
                }
                largestProduct = max(largestProduct, right, left, down, up, downRight, upRight, upLeft, downLeft)
            }
        }
        return largestProduct
    }
    
}
