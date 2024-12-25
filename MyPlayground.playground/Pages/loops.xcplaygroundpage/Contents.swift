//: [Previous](@previous)

import Foundation


// For loops
for num in 1...10 {
    print(num)
}

for letter in "Hello, World!" {
    print(letter)
}


var funFact = "exlxephxxxaxnts xcaxxn'xxt xxxjxumxpx."
for char in funFact {
  if char != "x" {
    print(char)
  }
}




// For loops - using stride()

// stride(form: 0, to: 6, by: 2)
// The value for 'to' parameter is the stop, that means that this value will not be printed
for num in stride(from: 0, to: 6, by: 2) {
    print(num)
}
// This print: 0, 2, 4


for num in stride(from: 3, to: 0, by: -1) {
    print(num)
}
// This print: 3, 2, 1







// Using underscore in a loop

//for num in 1...10 {
//    print("I will not write smelly code")
//}

for _ in 1...10 {
    print("I will not write smelly code")
}







// Continue keyword
let challenge = "bring it"

for char in challenge {
  switch char {
    case "a", "e", "i", "o", "u":
      continue
    default:
      print(char)
  }
}


for num in 1...9 {
  if num % 2 != 0 {
    continue
  }

  print(num)
}








// Break keyword
let respect = 556

for pageNum in 1...1000 {
  if pageNum == respect {
    print("Respect means: to admire someone for their abilities.")
    break
  }
  print("On page \(pageNum) and still no 'respect'!")
}








// While loop
var total = 0

while total < 50 {
  let diceRoll = Int.random(in: 1...6)
  total += diceRoll
}



var guess = Int.random(in: 1...10)
var magicNum = Int.random(in: 1...10)

while guess != magicNum {
  guess = Int.random(in: 1...10)
  magicNum = Int.random(in: 1...10)
}

print("You're right it was (guess)!")







// ---------- Exercises
// Odd or Even
for num in 1...100 {
  num % 2 == 0 ? print("Even: (num)") : print("Odd: (num)")
}


// Prime number
var primeNumber = 10
var disibledValues: Int = 0
for num in 1...primeNumber {
  if primeNumber % num == 0 {
    disibledValues += 1
  }
}

(disibledValues > 2 ) ? print("It's prime number") : print("It's not a prime number")


// Counting characters
var numberOfCharacters: Int = 0
for _ in "Hello world!" {
  numberOfCharacters += 1
}
print("There are (numberOfCharacters) characters in 'Hello world!'")



// Pattern

//for level in 1...4 {
//  var line: String = ""
//  for counter in 1...level {
//    line += "*"
//  }
//  print(line)
//}

for level in 1...4 {
    let line = String(repeating: "*", count: level)
    print(line)
}

