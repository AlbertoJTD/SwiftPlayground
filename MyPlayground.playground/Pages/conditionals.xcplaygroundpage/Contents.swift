//: [Previous](@previous)


var helloWorld = "Hello world" // Mutable variable
//let year = 2024 // Inmutable variable, it's a constant value
//year = "2025"

import Foundation

var isLoggedIn: Bool = true

if isLoggedIn {
    print("Welcome back!")
} else if 2 == 1 {
    print("2 is equal to 1")
} else {
    print("You need to log in first")
}

// Ternary conditional operator
print(1 == 1 ? "One is equal to one" : "One is not equal to one")


// Switch statement
var city: String = "Rome"

switch city {
  case "Rapa Nui":
    print("Moai 🗿")
  case "New York":
    print("Statue of Liberty 🗽")
  case "Rome":
    print("Colosseum 🏛")
  default:
    print("A famous landmark is the Eiffel Tower!")
}


//Interval matching
var year = 1943

switch year {
  case 1701...1800:
    print("18th century")
  case 1801...1900:
    print("19th century")
  case 1901...2000:
    print("20th century")
  case 2001...2100:
    print("21st century")
  default:
    print("You're a time traveler!")
}
// Prints: 20th century




// Compound cases
var country = "India"

switch country {
  case "USA", "Mexico", "Canada":
    print("\(country) is in North America. 🌏")
  case "South Africa", "Nigeria", "Kenya":
    print("\(country) is in Africa. 🌍")
  case "Bangladesh", "China", "India":
    print("\(country) is in Asia. 🌏")
  default:
    print("This country is somewhere in the world!")
}
// Prints: India is in Asia. 🌏








// Where clause
var randomNumber = Int.random(in: 0...10)

switch randomNumber {
  case let x where x % 2 == 0:
    print("\(randomNumber) is even")
  case let x where x % 2 == 1:
    print("\(randomNumber) is odd")
  default:
    print("Invalid")
}
