//: Playground - noun: a place where people can play

import UIKit

let numbers = [1,2,3,4,3,3]

//1. filter into [3,3,3], then filter into [2.4] (even numbers)

    //Use higher order functions like these to reduce the STATES inside our program. Is Not mutable which is good:
let filtered = numbers.filter({return $0 == 3})
filtered

let filteredAgain = numbers.filter({return $0 % 2 == 0})
filteredAgain

    //The long way here
var filteredArray = [Int]()
for number in numbers {
    if number % 2 == 0 {
        filteredArray.append(number)
    }
}
    //This approach is mutable ie. can still append to it - you don't want that. Should be immutable after filtering:
filteredArray.append(12345)


//2. transform [1,2,3,4] -> [2,4,6,8] using map
    //Slower approach:
var transformedArray = [Int]()
for number in [1,2,3,4] {
    transformedArray.append(number * 2)
}
transformedArray

    //Now using MAP
let transformed = [1,2,3,4].map({return $0 * 2})
transformed


//3. sum [1,2,3,4] -> 10 using reduce

var sumElements = 0
for number in [1,2,3,4] {
    sumElements += number
}
sumElements

let summed = [1,2,3,4].reduce(0, {sum, number in sum + number})
summed
