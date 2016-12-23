//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*
 Swift has three main types
 1) Arrays
  - ordered list of items, linear
 2) Sets
  - unordered, unique
 3) Dictionaries
  - keys(unique) and value
 
 may use dictionaries and arrays more than sets in swift
 */

// tips: search for how hashtable works in computer science

var nameOfIntegers = [Int: String]()

nameOfIntegers[3] = "three"
nameOfIntegers[44] = "forty four"

// clear out the dictionary
nameOfIntegers = [:]

// example

// !type inference works as well
var airports: [String: String] = ["YYZ": "Toronto Pearson", "LAX": "Los Angeles International"]

print("The airports dictionary has \(airports.count) items")

if airports.isEmpty {
    print("The airports dictionary is empty")
}

airports["LHR"] = "London"
airports["LHR"] = "London Heathrow"

// set it to nil - completely destroy the item
airports["haha"] = "foo"
airports["haha"] = nil

for (airportCode, airportName) in airports {
    //new line
    print("\(airportCode) : \(airportName)")
}

for key in airports.keys {
    print(key)
}

for val in airports.values {
    print(val)
}

