//
//  Node.swift
//  ProjectEulerSwift
//
//  Created by Andrew Budziszek on 11/19/16.
//  Copyright © 2016 Andrew Budziszek. All rights reserved.
//

import Foundation

class Node {
    
    var left : Node?
    var right : Node?
    var value : Any?
    
    init(_ pValue : Any, _ pLeft : Node?, _ pRight : Node?){
        value = pValue
        left = pLeft
        right = pRight
    }
    
}
