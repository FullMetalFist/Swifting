// Playground - noun: a place where people can play

import UIKit

var fizzBuzz = "Fizz Buzz"
// the rule of this app is to count from 1 to 100,
// writing "fizz" on every third
// writing "buzz" on every fifth
// and "fizzbuzz" when the third and fifth coincide.

for i in 1...100 {
    if (i % 3 == 0 && i % 5 == 0) {
        println("fizz buzz")
        continue
    }
    else if (i % 5 == 0) {
        println("buzz")
        continue
    }
    else if (i % 3 == 0) {
        println("fizz")
        continue
    }
    println(i)
}
