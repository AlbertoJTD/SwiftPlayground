//: [Previous](@previous)

import Foundation


var dogAge: Int = 2

var earlyYears = 0
var laterYears = 0
var humanYears = 0

// “The first two years of a dog’s life count as 21 human years.”
earlyYears = 21

// “Each following year counts as 4 human years.”
laterYears = (dogAge - 2) * 4
humanYears = earlyYears + laterYears

print("My name is cofy! Ruff ruff, I am \(humanYears) years old in human years.")
