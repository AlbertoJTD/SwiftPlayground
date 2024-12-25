//: [Previous](@previous)

import Foundation

for number in 1...100 {
  if number % 3 == 0 && number % 5 == 0 {
    print("FizzBuzz")
  } else if number % 3 == 0 {
    print("Fizz")
  } else if number % 5 == 0 {
    print("Buzz")
  } else if number % 2 == 0 {
    print("Pazz")
  }
}


var currentNumber: Int = 0
while currentNumber <= 100 {
  if currentNumber % 3 == 0 && currentNumber % 5 == 0 {
    print("FizzBuzz")
  } else if currentNumber % 3 == 0 {
    print("Fizz")
  } else if currentNumber % 5 == 0 {
    print("Buzz")
  } else if currentNumber % 2 == 0 {
    print("Pazz")
  }

  currentNumber += 1
}
