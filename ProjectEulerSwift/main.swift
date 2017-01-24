//
//  main.swift
//  ProjectEulerSwift
//
//  Created by Andrew Budziszek on 9/19/16.
//  Copyright © 2016 Andrew Budziszek. All rights reserved.
//
import Foundation
var start = DispatchTime.now()


/*
//Problem 1
print("Problem 1: \(p1()) (\(Double(DispatchTime.now().uptimeNanoseconds - start.uptimeNanoseconds) * pow(10, -9))s)")

//Problem 2
start = DispatchTime.now()
print("Problem 2: \(p2()) (\(Double(DispatchTime.now().uptimeNanoseconds - start.uptimeNanoseconds) * pow(10, -9))s)")

//Problem 3
start = DispatchTime.now()
print("Problem 3: \(p3()) (\(Double(DispatchTime.now().uptimeNanoseconds - start.uptimeNanoseconds) * pow(10, -9))s)")

//Problem 4
start = DispatchTime.now()
print("Problem 4: \(p4()) (\(Double(DispatchTime.now().uptimeNanoseconds - start.uptimeNanoseconds) * pow(10, -9))s)")

//Problem 5
start = DispatchTime.now()
let p5 = Problem5()
print("Problem 5: \(p5.SmallestMultiple()) (\(Double(DispatchTime.now().uptimeNanoseconds - start.uptimeNanoseconds) * pow(10, -9))s)")

//Problem 6
start = DispatchTime.now()
let p6 = Problem6()
print("Problem 6: \(p6.DifferenceSumSquares()) (\(Double(DispatchTime.now().uptimeNanoseconds - start.uptimeNanoseconds) * pow(10, -9))s)")

//Problem 7
start = DispatchTime.now()
let p7 = Problem7()
print("Problem 7: \(p7.NthPrimeNumber(num: 10001)) (\(Double(DispatchTime.now().uptimeNanoseconds - start.uptimeNanoseconds) * pow(10, -9))s)")

//Problem 8
start = DispatchTime.now()
let p8 = Problem8()
print("Problem 8: \(p8.AdjacentProduct()) (\(Double(DispatchTime.now().uptimeNanoseconds - start.uptimeNanoseconds) * pow(10, -9))s)")

//Problem 9
start = DispatchTime.now()
let p9 = Problem9()
print("Problem 9: \(p9.PythagoreanTriplet()) (\(Double(DispatchTime.now().uptimeNanoseconds - start.uptimeNanoseconds) * pow(10, -9))s)")

//Problem 10
start = DispatchTime.now()
let p10 = Problem10()
print("Problem 10: \(p10.SumOfPrimesBelow(n: 2000000)) (\(Double(DispatchTime.now().uptimeNanoseconds - start.uptimeNanoseconds) * pow(10, -9))s)")

//Problem 11
start = DispatchTime.now()
let p11 = Problem11()
print("Problem 11: \(p11.ProductOfGrid()) (\(Double(DispatchTime.now().uptimeNanoseconds - start.uptimeNanoseconds) * pow(10, -9))s)")

//Problem 12
start = DispatchTime.now()
let p12 = Problem12()
print("Problem 12: \(p12.TriangleNumbers()) (\(Double(DispatchTime.now().uptimeNanoseconds - start.uptimeNanoseconds) * pow(10, -9))s)")

//Problem 13
start = DispatchTime.now()
let p13 = Problem13()
print("Problem 13: \(p13.SumOfLargeNumbers()) (\(Double(DispatchTime.now().uptimeNanoseconds - start.uptimeNanoseconds) * pow(10, -9))s)")

//Problem 14
start = DispatchTime.now()
let p14 = Problem14()
print("Problem 14: \(p14.CollatzNumber()) (\(Double(DispatchTime.now().uptimeNanoseconds - start.uptimeNanoseconds) * pow(10, -9))s)")

 
//Problem 15
start = DispatchTime.now()
let p15 = Problem15()
print("Problem 15: \(p15.LatticePathCombinations()) (\(Double(DispatchTime.now().uptimeNanoseconds - start.uptimeNanoseconds) * pow(10, -9))s)")

//Problem 16
start = DispatchTime.now()
let p16 = Problem16()
print("Problem 16: \(p16.PowerDigitSum()) (\(Double(DispatchTime.now().uptimeNanoseconds - start.uptimeNanoseconds) * pow(10, -9))s)")

//Problem 17
start = DispatchTime.now()
let p17 = Problem17()
print("Problem 17: \(p17.NumberLetterCounts()) (\(Double(DispatchTime.now().uptimeNanoseconds - start.uptimeNanoseconds) * pow(10, -9))s)")

//Problem18
start = DispatchTime.now()
let p18 = Problem18()
print("Problem 18: \(p18.findSum()) (\(Double(DispatchTime.now().uptimeNanoseconds - start.uptimeNanoseconds) * pow(10, -9))s)")

//Problem19
start = DispatchTime.now()
let p19 = Problem19()
print("Problem 19: \(p19.countSundays()) (\(Double(DispatchTime.now().uptimeNanoseconds - start.uptimeNanoseconds) * pow(10, -9))s)")
 
//Problem20
start = DispatchTime.now()
let p20 = Problem20()
print("Problem 20: \(p20.findSum()) (\(Double(DispatchTime.now().uptimeNanoseconds - start.uptimeNanoseconds) * pow(10, -9))s)")

//Problem21
start = DispatchTime.now()
let p21 = Problem21()

print("Problem 21: \(p21.AmicableNumbers()) (\(Double(DispatchTime.now().uptimeNanoseconds - start.uptimeNanoseconds) * pow(10, -9))s)")

//Problem22
start = DispatchTime.now()
let p22 = Problem22()

print("Problem 22: \(p22.nameScores()) (\(Double(DispatchTime.now().uptimeNanoseconds - start.uptimeNanoseconds) * pow(10, -9))s)")

//Problem23
start = DispatchTime.now()
let p23 = Problem23()

print("Problem 23: \(p23.NonAbundantSums()) (\(Double(DispatchTime.now().uptimeNanoseconds - start.uptimeNanoseconds) * pow(10, -9))s)")

//Problem24
start = DispatchTime.now()

print("Problem 24: \(p24()) (\(Double(DispatchTime.now().uptimeNanoseconds - start.uptimeNanoseconds) * pow(10, -9))s)")

//Problem25
start = DispatchTime.now()

print("Problem 25: \(p25()) (\(Double(DispatchTime.now().uptimeNanoseconds - start.uptimeNanoseconds) * pow(10, -9))s)")

//Problem26
start = DispatchTime.now()

print("Problem 26: \(p26()) (\(Double(DispatchTime.now().uptimeNanoseconds - start.uptimeNanoseconds) * pow(10, -9))s)")

//Problem27
start = DispatchTime.now()

print("Problem 27: \(p27()) (\(Double(DispatchTime.now().uptimeNanoseconds - start.uptimeNanoseconds) * pow(10, -9))s)")

//Problem28
start = DispatchTime.now()

print("Problem 28: \(p28()) (\(Double(DispatchTime.now().uptimeNanoseconds - start.uptimeNanoseconds) * pow(10, -9))s)")

//Problem29
start = DispatchTime.now()

print("Problem 29: \(p29()) (\(Double(DispatchTime.now().uptimeNanoseconds - start.uptimeNanoseconds) * pow(10, -9))s)")

//Problem30
start = DispatchTime.now()

print("Problem 30: \(p30()) (\(Double(DispatchTime.now().uptimeNanoseconds - start.uptimeNanoseconds) * pow(10, -9))s)")
 */


