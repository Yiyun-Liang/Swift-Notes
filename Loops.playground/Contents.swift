//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var salaries = [4500.0, 3300.0, 2500.0, 5500.0]

// a do while loop
var x = 0
repeat {
    salaries[x] = salaries[x]*1.10
    x += 1
} while (x < salaries.count)

// for loop
for n in 1...3 {  // inclusive: including 1 and 3
    print(n)
}

for n in 1..<3 {  // including 1 but excluding 3
    print(n)
}

for i in 0..<salaries.count {
    salaries[i] = salaries[i]*1.10
}

for s in salaries {
    print(s)
}