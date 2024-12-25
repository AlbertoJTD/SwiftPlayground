//: [Previous](@previous)

import Foundation


// Logical AND operator
var time = 8 // PM
var phoneInUse = true
var brightness: Double

if time >= 8 && phoneInUse {
  brightness = 0.75
} else {
  brightness = 1
}

print(brightness) // Prints: 0.75



// Logical OR operator
var snowing = false
var raining = true

if snowing || raining {
 print("Wear waterproof shoes!")
}




// Logical NOT operator
var feelingWell = true

if !feelingWell {
  print("Have some vitamins and take care of yourself 🤒")
} else {
  print("Embrace the day!")
}





// Combining logical operators
let weekday = true
let dayOff = false
let weekend = false

if weekday && dayOff || weekend {
  print("Do something fun!")
} else {
  print("Get some work done")
}
