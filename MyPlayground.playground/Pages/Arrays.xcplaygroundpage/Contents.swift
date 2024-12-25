//: [Previous](@previous)

import Foundation

var scores = [Int]()


//var location = [40.7127, -73.9653]
var location: [Double] = [40.7127, -73.9653]





// Access values by index
var temperature: [Int] = [66, 68, 72, 76, 80, 82, 85, 85, 84, 82, 81, 78, 74, 73, 72, 71, 70, 69, 68, 65, 63, 62, 61, 63]
print(temperature[0])




// Using count property
var grocery = ["🥓", "🥞", "🍪", "🥛", "🍊"]
print(grocery.count)




// Append method - Add new data to the array
grocery.append("🍗")
grocery += ["🍗", "🍗", "🍗"]




// Insert and remove methods
var emojis = ["🍗", "🥛", "🍊"]
emojis.insert("👻", at: 1) // ["🍗", "👻", "🥛", "🍊"]
emojis.remove(at: 2) // ["🍗", "👻", "🍊"]






// Iterating over an array
for emoji in emojis {
    print(emoji)
}
