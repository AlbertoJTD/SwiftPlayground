//: [Previous](@previous)

import Foundation

/*
 Considerations
 
 - Each character is separated by a single space.
 - Each word is separated by three spaces.
 - Capitalization does not matter.
 */


var englishText = "this is a secret message"
var secretMessage = ".... --- .-- -.. -.--   .--. .- .-. - -. . .-."
var letterToMorse: [String: String] = [
  "a": ".-",
  "b": "-...",
  "c": "-.-.",
  "d": "-..",
  "e": ".",
  "f": "..-.",
  "g": "--.",
  "h": "....",
  "i": "..",
  "j": ".---",
  "k": "-.-",
  "l": ".-..",
  "m": "--",
  "n": "-.",
  "o": "---",
  "p": ".--.",
  "q": "--.-",
  "r": ".-.",
  "s": "...",
  "t": "-",
  "u": "..-",
  "v": "...-",
  "w": ".--",
  "x": "-..-",
  "y": "-.--",
  "z": "--..",
  ".": ".-.-.-",
  ",": "--..--",
  "?": "..--..",
  "!": "-.-.--"
]

// Convert text to morse code
var morseText: String = ""
for element in englishText.lowercased() {
  if let morseChar = letterToMorse[String(element)] {
    morseText += "\(morseChar) "
  } else {
    morseText += "   "
  }
}
print(morseText)




// Translate morse code to text
var decodedMessage: String = ""
var morseCodeArray: [String] = []
var currMorse: String = ""

// Group characters in a string and then added to the array
for char in secretMessage {
  if char != " " {
    currMorse += String(char)
    // print("currMorse: \(currMorse)")
  } else {
    switch currMorse {
      case "":
        currMorse += " "
        // print("currMorse: \(currMorse)")
      case " ":
        morseCodeArray.append(" ")
        currMorse = ""
      default:
        // print("currMorse: \(currMorse)")
        morseCodeArray.append(currMorse)
        currMorse = ""
    }
  }
}

morseCodeArray.append(currMorse) // Add the last morse code created
print(morseCodeArray)

var morseToLetter : [String: String] = [:]

// Fill morseToLetter dictionary
for (letter, morseChar) in letterToMorse {
  morseToLetter[morseChar] = letter
}
// print(morseToLetter)


for (index, morseValue) in morseCodeArray.enumerated() {
  if let letterChar = morseToLetter[morseValue] {
    decodedMessage += (index == 0) ? letterChar.uppercased() : letterChar.lowercased()
  } else {
    decodedMessage += " "
  }
}

print(decodedMessage)



