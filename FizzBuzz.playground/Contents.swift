// FizzBuzz

import Foundation

var oneThousandNumbers = [Int]()

for i in 1...1000 {
    oneThousandNumbers.append(i)
}

for num in oneThousandNumbers {
    if num % 3 == 0 && num % 5 == 0 { // or num % 15 == 0
        print("\(num) fizzbuzz")
    } else if num % 3 == 0 {
        print("\(num) fizz")
    } else if num % 5 == 0 {
        print("\(num) buzz")
    } else {
        print(num)
    }
}
