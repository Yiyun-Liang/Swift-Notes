//: Playground - noun: a place where people can play

import UIKit

// putting a question mark at the end of the type
// this variable may or may not have a value
// get nil
var lotteryWinnings: Int?

// unwrap the optional value(get/use the value)
// crash if there is no value
// print(lotteryWinnings!) -> bad warning

// always check optionals

// 1)
if lotteryWinnings != nil {
    print(lotteryWinnings!)
}

lotteryWinnings = 100

// 2) preferred
// take the value out of lotteryWinnings(if it exists!)
// avoid unwrapping
if let winnings = lotteryWinnings {
    print(winnings)
}

class Car {
    var model: String?
}

var vehicle: Car?

// 1)
if let v = vehicle {
    if let m = v.model {
        print(m)
    }
}
// crash...print(vehicle!.model)
// it is an optional so if it has a value, we print it, otherwise, we do nothing
// dangerous... do a if let instead...
print(vehicle?.model)

// ? for optionals
// remind you that it is an optional and we don't know if it is going to have a value
vehicle = Car()
vehicle?.model = "BMW"

// 2)
if let v = vehicle, let m = v.model {
    print(m)
}


var cars: [Car]?
// initialize empty array
// necessary for cars?.count to be not nil
cars = [Car]()

if let carArr = cars {
    if carArr.count > 0 {
        // ...
    }
}

if let carArr = cars, carArr.count > 0 {
    // only execute if not nil and if more than 0 element
}else{
    cars?.append(Car())
    print(cars?.count)
}

// implicitly unwrapped optional - guarantee a value
// var age: Int!

class Person {
    // to avoid crashing due to implicit unwrapping
    // 1)
    // var age = 0
    
    // 2)
    private var _age: Int!
    
    // a getter, computed property
    var age: Int {
        if _age == nil {
            _age = 15
        }
        return _age
    }
    
    func setAge(newAge: Int){
        self._age = newAge
    }
}

var jack = Person()
// print(jack._age) -> warning, nil
print(jack.age)

// don't want ? or !, but does not want a default value either
class Dog {
    var species: String
    
    // constructor
    init(someSpecies: String){
        self.species = someSpecies
    }
}

var lab = Dog(someSpecies: "Black Lab")
print(lab.species)

/*
 SUMMARY
 ? : does not know whether the variable has a value or not
    - when accessing the variable, use if let
 ! : guarantees that the variable has a value
    - need safety code(make sure it has a value) so that when users use it, it does not crash
 init : give it a value at runtime
 */
