//: [Previous](@previous)

import Foundation


var input = "Swift loops? Easy peasy."
var output = ""

for char in input {
  let lowerChar = char.lowercased()

  switch lowerChar {
    case "a", "i", "o", "w", "s":
      output += lowerChar.uppercased()
    case "e", "u":
      output += lowerChar == "e" ? "EE" : "UU"
    case "?", "!":
      output += "IIII"
    default:
      continue
  }
}

print(output)
