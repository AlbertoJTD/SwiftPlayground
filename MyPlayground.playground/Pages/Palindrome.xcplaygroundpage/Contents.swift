//: [Previous](@previous)

import Foundation

var test: [String] = ["h", "e", "l", "l", "o"]
// var test: [String] = ["l", "e", "v", "e", "l"]
// var test: [String] = ["a", "n", "n", "a"]

var reversed = [String]()

// var counter: Int = 0
// while counter < test.count {
//   reversed.insert(test[counter], at: 0)
//   counter += 1
// }

for counter in stride(from: 0, to: test.count, by: 1) {
  reversed.insert(test[counter], at: 0)
}


if test == reversed {
  print("We have a palindrome!")
} else {
  print("We don not have a palindrome!")
}
