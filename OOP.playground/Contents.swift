//: Playground - noun: a place where people can play

import UIKit

class Car {
    var model = ""
    
    func drive(){
        
    }
}

let ford = Car()
ford.model = "F150"

let bmw = Car()
bmw.model = "328i"

// objects are passed by reference
func passByReference(car: Car){
    car.model = "cheese"
}

print(ford.model)
passByReference(car: ford)
print(ford.model)

// primitive types, including strings are passed by value
var someonesAge = 18
func passByValue(age: Int) -> Int {
    let newAge = age
    return newAge
}
passByValue(age: someonesAge)


// INHERITENCE
class Vehicle {
    var tires = 4
    var make: String?
    var model: String?
    var currentSpeed: Double = 0
    
    init(){
         print("I am the parent")
    }
    
    func drive(speedIncrease: Double){
        currentSpeed += speedIncrease
    }
    
    func brake(){
        
    }
}

class SportsCar: Vehicle {
    
    override init(){
        // necessary
        super.init()
        print("I am the child")
        make = "BMW"
        model = "3 series"
    }
    
    override func drive(speedIncrease: Double) {
        currentSpeed += speedIncrease * 3
    }
}

let car = SportsCar()


// POLYMORPHISM
// implementing a contract in different ways


