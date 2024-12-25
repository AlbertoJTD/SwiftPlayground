//: [Previous](@previous)

import Foundation

var numBottles: Int = 99
var lastLyrics = "0 bottles of milk on the wall, 0 bottles of milk!\nGo to the store and buy some more,\n99 bottles of milk on the wall!"

while numBottles > 0 {
  print("(numBottles) bottles of milk on the wall, (numBottles) bottles of milk!")
  print("You take one down and pass it around…")
  numBottles -= 1
  print("(numBottles) bottles of milk on the wall!\n")
}
print (lastLyrics)


print("\n\nUsing for loop")
for bottlesNumber in stride(from: 99, to: -1, by: -1) {
  print("(bottlesNumber) bottles of milk on the wall, (bottlesNumber) bottles of milk!")
  print("You take one down and pass it around…")
  print("(bottlesNumber) bottles of milk on the wall!\n")
}
print(lastLyrics)
