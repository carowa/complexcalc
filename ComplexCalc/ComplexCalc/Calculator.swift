//  August Carow
//  Calculator.swift
//  ComplexCalc
//
//  Created by Ted Neward on 10/4/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

// All your work will go in here
class Calculator {
    
    //add two args
    func add(lhs : Int, rhs : Int) -> Int {
        return lhs + rhs
    }
    
    //subtract two args
    func subtract(lhs : Int, rhs : Int) -> Int {
        return lhs - rhs
    }
    
    //multiple two args
    func multiply(lhs : Int, rhs : Int) -> Int {
        return lhs * rhs
    }
    
    //divide two args
    func divide(lhs: Int, rhs: Int) -> Int {
        return lhs / rhs
    }
    
    //mathOp two args
    func mathOp(lhs : Int, rhs : Int, op: (Int, Int) -> Int) -> Int {
        return op(lhs, rhs)
    }
    
    //add an array
    func add(_ Input: [Int]) -> Int {
        var sum : Int = 0;
        for num in Input {
            sum = sum + num
        }
        return sum;
    }
    
    //multiply an array
    func multiply(_ Input: [Int]) -> Int {
        var product : Int = 1;
        for num in Input {
            product = product * num
        }
        return product
    }
    
    //count an array
    func count(_ Input: [Int]) -> Int {
        return Input.count
    }
    
    //average an array
    func avg(_ Input: [Int]) -> Int {
        var sum : Int = 0;
        for num in Input {
            sum = sum + num
        }
        return sum / (Input.count)
    }
    
    //mathOp an array
    func mathOp(args: [Int], beg : Int, op: (Int, Int) -> Int) -> Int {
        var product : Int = 0;
        var beg2 : Int = beg;
        for num in args {
            product = op(beg2, num)
            beg2 = product
        }
        return product
    }
    
    //add coordinates (tuples)
    func add(lhs: (Int, Int), rhs: (Int, Int) ) -> (Int, Int) {
        var tup = (0, 0);
        tup.0 = lhs.0 + rhs.0
        tup.1 = lhs.1 + rhs.1
        return tup
    }
    
    //subtract coordinates (tuples)
    func subtract(lhs a:(Int, Int), rhs b:(Int, Int)) -> (Int, Int) {
        var tup = (0, 0)
        tup.0 = a.0 - b.0
        tup.1 = a.1 - b.1
        return tup
    }

    //add in a dictionary
    func add(lhs: [String:Int], rhs: [String:Int]) -> [String:Int] {
        let x : Int = lhs["x"]! + rhs["x"]!
        let y : Int = lhs["y"]! + rhs["y"]!
        return ["x": x, "y": y]
    }
    
    //subtract in a dictionary
    func subtract(lhs: [String:Int], rhs: [String:Int]) -> [String:Int] {
        let x : Int = lhs["x"]! - rhs["x"]!
        let y : Int = lhs["y"]! - rhs["y"]!
        return ["x": x, "y": y]
    }
}
