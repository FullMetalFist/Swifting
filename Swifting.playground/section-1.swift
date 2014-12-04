// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
println(str)

var myVariable = 42
myVariable = 50
let myConstant = 42

let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70

let explicitConstantFloat: Float = 4

let label = "The width is "
let width = 94
let widthLabel = label + String(width)

let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples"
let fruitSummary = "I have \(apples + oranges) pieces of fruit"

let fourPointFive = 4.5
let sevenPointTwo = 7.2
let heyDuude = "\(fourPointFive + sevenPointTwo) hey duude!"

var theArray = ["apple", "peach", "pear"]
var theDict = ["orange":"citrus", "grape":"seedless",]

theDict["apple"] = "fiber"

// differs from Apple text
let emptyArray = [String]()
let emptyDictionary = Dictionary<String, Float>()

let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}

var optionalString: String? = "Hello"
optionalString == nil
var optionalName: String? = "John Appleseed"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}

let vegetable = "red pepper"
switch vegetable {
    case "celery":
        let vegetableComment = "Add some raisins and make ants on a log"
    case "cucumber", "watercress":
        let vegetableComment = "That would make a good tea sandwich"
    case let x where x.hasSuffix("pepper"):
        let vegetableComment = "Is it a spicy \(x)?"
    default:
        let vegetableComment = "Everything tastes good in soup"
}

let interestingNumbers = [
    "Prime":[2,3,5,7,11,13],
    "Fibonacci":[1,1,2,3,5,8],
    "Square":[1,4,9,16,25],
]
var largest = 0
var kindOfNumber: String = ""
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
            kindOfNumber = kind
        }
    }
}
var theBiggest = "biggest # \(largest), a \(kindOfNumber)"
largest
println(kindOfNumber)

var n = 2
while n < 100 {
    n = n * 2
}
n

var m = 2
do {
    m = m * 2
} while m < 100
m

// differs from Apple text
var firstForLoop = 0
for i in 0...3 {        // the >..< fails- use ... instead
    firstForLoop += i
}
firstForLoop

var secondForLoop = 0
for var i = 0; i < 3; ++i {
    secondForLoop += i
}
secondForLoop

func greet(name: String, day: String) -> String {
    return "Hello \(name), today is \(day)."
}
greet("Dude", "Funday")

func getGasPrices() -> (Double, Double, Double) {
    return (3.59, 3.69, 3.79)
}
getGasPrices()

// apple challenge
func computeAverage(num1: Int, num2: Int) -> (Int) {
    var avg = num1 + num2 / 2
    return avg
}

computeAverage(45, 35)

// apple challenge enhanced
func moarAverage(numbers: Int ...) -> (Int) {
    var addAllTogether = 0
    var howMany = 0
    for number in numbers {
        addAllTogether += number
        howMany += 1
    }
    return addAllTogether / howMany
}

moarAverage(1,2,3,4,5,6,7,8,9,10)

func returnFifteen() ->Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
returnFifteen()

func makeIncrementer() -> (Int -> Int) {
    func addOne(number:Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
increment(7)

func hasAnyMatches(list: [Int], condition: Int -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}

func lessThanTen(number: Int) -> Bool {
    return number < 10
}

var numbers = [20, 19, 7, 12, 15]
hasAnyMatches(numbers, lessThanTen)

numbers.map({
    (number: Int) -> Int in
    let result = 3 * number
    return result
})

numbers.map({
    (number: Int) -> Int in
    if (number % 2 == 0) {
        return number
    }
    else {
        return 0
    }
})