//
//  Calculator.swift
//  ComplexCalc
//
//  Created by Ted Neward on 10/4/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

// All your work will go in here
class Calculator {
    
    // basic math operation for two numbers
    func add (lhs : Int, rhs : Int) -> Int {
        return lhs + rhs
    }
    
    func subtract (lhs : Int, rhs : Int)  -> Int {
        return lhs - rhs
    }
    
    func multiply (lhs : Int, rhs : Int) -> Int {
        return lhs * rhs
    }
    
    func divide (lhs : Int, rhs : Int) -> Int {
        return lhs / rhs
    }
    
    // It takes two numbers and compute the result
    func mathOp (lhs : Int, rhs : Int, op : (Int, Int) -> Int) -> Int{
        return op(lhs, rhs)
    }
    
    // It takes an array of Integer and returns the sum of all numbers in array
    func add(_ input : [Int]) -> Int {
        var result : Int  = 0
        for num in input {
            result += num
        }
        return result
    }
    
    // It takes an array of Integer and returns the result of multiplying all
    // elements in the array. If the array is empty, it returns 0.
    func multiply(_ input : [Int]) -> Int {
        var result : Int = 1
        if input.isEmpty {
            return 0
        } else {
            for num in input {
                result *= num
            }
        }
        return result
    }
    
    // It takes an array of Integers and returns the number of elements in the array
    func count (_ input : [Int]) -> Int {
        return input.count
    }
    
    // It takes an array of Integers and returns the average of those numbers.
    // If the array is empty, it returns 0.
    func avg(_ input : [Int]) -> Int {
        if input.isEmpty {
            return 0
        }
        return add(input) / count(input)
    }
    
    // it takes an 
    func mathOp (args : [Int], beg : Int, op : (Int, Int) -> Int) -> Int {
        var result : Int = beg
        for num in args {
            result = op(num, result)
        }
        return result
    }
    
    //Basic math operations in tulples (points)
    func add (lhs : (Int, Int), rhs : (Int, Int)) -> (Int, Int) {
        return (lhs.0 + rhs.0, lhs.1 + rhs.1)
    }
    
    func subtract (lhs : (Int, Int), rhs : (Int, Int)) -> (Int, Int) {
        return (lhs.0 - rhs.0, lhs.1 - rhs.1)
    }
    
    func multiply (lhs : (Int, Int), rhs : (Int, Int)) -> (Int, Int) {
        return (lhs.0 * rhs.0, lhs.1 * rhs.1)
    }
    
    func divide (lhs : (Int, Int), rhs : (Int, Int)) -> (Int, Int) {
        if rhs.0 == 0 || rhs.1 == 0 {
            return (0, 0)
        }
        return (lhs.0 / rhs.0, lhs.1 / rhs.1)
    }
    
    // Basic Math operations in String to Integer dictionary
    // In all the dictionary computation we assume two dictionaries given
    // have same key -> value pairs. In an other word, if there is a x key in $0
    // there is expected to have a x key in $1.
    
    func add (lhs : [String : Int], rhs :[String : Int]) -> [String : Int] {
        var result : [String : Int] = lhs
        for keys in rhs.keys {
            result[keys] = lhs[keys]! + rhs[keys]!
        }
        return result
    }
    
    func subtract (lhs : [String : Int], rhs :[String : Int]) -> [String : Int] {
        var result : [String : Int] = lhs
        for keys in rhs.keys {
            result[keys] = lhs[keys]! - rhs[keys]!
        }
        return result
    }
    
    func multiply (lhs : [String : Int], rhs :[String : Int]) -> [String : Int] {
        var result : [String : Int] = lhs
        for keys in rhs.keys {
            result[keys] = lhs[keys]! * rhs[keys]!
        }
        return result
    }
    
    func divide (lhs : [String : Int], rhs :[String : Int]) -> [String : Int] {
        var result : [String : Int] = lhs
        for keys in rhs.keys {
            if rhs[keys]! == 0 {
                result[keys] = 0
            } else {
                result[keys] = lhs[keys]! / rhs[keys]!
            }
        }
        return result
    }
}
