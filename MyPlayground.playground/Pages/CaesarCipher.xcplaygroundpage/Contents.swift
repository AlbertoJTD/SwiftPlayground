//: [Previous](@previous)

import Foundation

var alphabet: [Character] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"] // 26

var secretMessage: String = "hello"
print(secretMessage)

var message = Array(secretMessage)
print(message)

for i in 0 ..< message.count {
  var index = alphabet.firstIndex(of: message[i]) ?? -1

  if index == -1 {
    continue
  } else if (index + 3) <= (alphabet.count - 1) {
    message[i] = alphabet[index + 3]
  } else {
    index += 3
    // let letterIndex = index - (alphabet.count - 1)
    message[i] = alphabet[(index % alphabet.count - 1)]
  }

  // print("Index of character[(message[i])] in message: (index)")
}

print(message)
