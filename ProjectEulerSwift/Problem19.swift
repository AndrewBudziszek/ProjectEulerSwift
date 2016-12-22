//
//  Problem19.swift
//  ProjectEulerSwift
//
//  Created by Andrew Budziszek on 12/21/16.
//  Copyright © 2016 Andrew Budziszek. All rights reserved.
//You are given the following information, but you may prefer to do some research for yourself.
//    
//  1 Jan 1900 was a Monday.
//  Thirty days has September,
//  April, June and November.
//  All the rest have thirty-one,
//  Saving February alone,
//  Which has twenty-eight, rain or shine.
//  And on leap years, twenty-nine.
//
//A leap year occurs on any year evenly divisible by 4, but not on a century unless it is divisible by 400.
//How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?
//

import Foundation

class Problem19{
    var year = 1900
    var dayOfMonth = 1
    var dayOfWeek = 1
    var month = 1
    var numberOfDaysThisMonth = -1
    var numOfSundays = 0
    let daysOfWeek:[String] = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sundy"]
    let monthStrings:[String] = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
    
    func countSundays() -> Int {
        while year <= 2000 {
            if month == 4 || month == 6 || month == 9 || month == 11{
                numberOfDaysThisMonth = 30
            } else if month == 2 {
                numberOfDaysThisMonth = year % 4 == 0 ? 29 : 28
            } else {
                numberOfDaysThisMonth = 31
            }
            while dayOfMonth <= numberOfDaysThisMonth{
                //printDate()
                dayOfWeek += 1
                dayOfWeek = dayOfWeek == 8 ? 1 : dayOfWeek
                dayOfMonth += 1
            }
            dayOfMonth = 1
            if dayOfMonth == 1 && dayOfWeek == 7 && year != 1900{
                numOfSundays += 1
            }
            month += 1
            if month == 13 {
                month = 1
                year += 1
            }
        }
        return numOfSundays
    }
    
    func printDate() {
        print("\(daysOfWeek[dayOfWeek - 1]), \(monthStrings[month - 1]) \(dayOfMonth), \(year)")
    }
}
