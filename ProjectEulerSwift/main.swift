//
//  main.swift
//  ProjectEulerSwift
//
//  Created by Andrew Budziszek on 9/19/16.
//  Copyright © 2016 Andrew Budziszek. All rights reserved.
//
import Foundation

//PROBLEM 1
let p1 = Problem1()
print("Problem 1: \(p1.sumMultiples(upTo: 999))")

//Problem 2
let p2 = Problem2()
print("Problem 2: \(p2.FibonacciThis(upTo: 4000000))")

//Problem 3
let p3 = Problem3()
print("Problem 3: \(p3.largestPrimeFactor(n: 600851475143))")

//Problem 4
let p4 = Problem4()
print("Problem 4: \(p4.LargestPalindromeProduct3Digits())")

//Problem 5
let p5 = Problem5()
print("Problem 5: \(p5.SmallestMultiple())")
