//: [Previous](@previous)

import Foundation

// Initialize sets
// Sets are unique values, non repetitives
// NOTE: Sets are unordered, meaning that the placement of an element in a set will not dictate how it is interpreted by the compiler.

var instruments = Set<String>()

var swiftTeam: Set = ["Galina", "Kenny", "Sonny", "Alex"]





var consonants = Set<Character>()
var vowels: Set = ["A", "E", "I", "O", "U"]

print(vowels)






var lunchbox: Set = ["Apple", "Sandwich"]
print("I have \(lunchbox.count) items in my lunchbox!")
// Prints: I have 2 items in my lunchbox!






var instruments = Set<String>()
if instruments.isEmpty {
  print("Let's sign up for piano lessons!")
}
// Prints: Let's sign up for piano lessons!




// Check if it's an empty set
var sockDrawer: Set = ["Red Polka Dots", "Blue Stripes", "Plain Whites"]
if sockDrawer.isEmpty {
  print("Time to add some more socks!")
} else {
  print("We have \(sockDrawer.count) pairs of socks.")
}







// Insert new elements
var friends: Set = ["Harry", "Ron"]
print("There are some things you can't share without ending up liking each other, and defeating a twelve-foot mountain troll is one of them.")

friends.insert("Hermione")
friends.insert("Ron")

print("Friends: \(friends)")






// Remove a specific item or all the items
var planets: Set = ["Earth", "Jupiter", "Mars", "Neptune", "Saturn", "Venus", "Uranus", "Mercury", "Pluto"]

planets.remove("Pluto")
planets.removeAll()

print(planets)






var coffeeFlavors: Set = ["Caramel", "Mocha", "Pumpkin Spice", "Vanilla", "Blueberry"]

if coffeeFlavors.contains("Blueberry") {
  print("One blueberry coffee coming right up.")
} else {
  print("We do not serve that coffee flavor here.")
}







var thingsToPack: Set = ["Bathing Suit", "Clothes", "Sunglasses", "Sunscreen", "Favorite Book", "Phone Charger"]
var suitcase = Set<String>()

for item in thingsToPack {
  suitcase.insert(item)
}

print(suitcase)








// Set Operations: .intersection()
var firstSet: Set = ["A", "B", "C"]
var secondSet: Set = ["B", "C", "D"]

let intersection = firstSet.intersection(secondSet)
print("Intersection: \(intersection)")



var swim: Set = ["Turtles", "Ducks", "Puffins", "Shark"]
var fly: Set = ["Humming birds", "Bats", "Ducks", "Puffins"]
var swimAndFly: Set = swim.intersection(fly)
print(swimAndFly)







// Set Operations: .union()
var book1: Set = ["Pig 1", "Pig 2", "Pig 3", "Wolf"]
var book2: Set = ["Little Red Riding Hood", "Grandma", "Wolf"]
var book3: Set = ["Jack", "Blunderbore", "Beanstock"]
var fairyTales = book1.union(book2).union(book3)



var consonants: Set = ["B", "C", "D", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "X", "Y", "Z"]
var vowels: Set = ["A", "E", "I", "O", "U"]

var alphabet = consonants.union(vowels)
print(alphabet)






// Set Operations: .symmetricDifference()
var nintendoSwitch: Set = ["Animal Crossing", "DOOM Eternal", "Stardew Valley"]
var playStation4: Set = ["DOOM Eternal", "Stardew Valley", "The Last of Us"]

var exclusiveGames = nintendoSwitch.symmetricDifference(playStation4)
print(exclusiveGames)




var oscarWinners: Set = ["Heath Ledger", "Rita Moreno", "Audrey Hepburn", "John Legend"]
var emmyWinners: Set = ["Peter Dinklage", "John Legend", "Audrey Hepburn", "Rita Moreno"]

var difference = oscarWinners.symmetricDifference(emmyWinners)
print(difference)








// Set Operations: .subtracting()
var animals: Set = ["Bison", "Mountain Gorilla", "Hedgehog", "Sea Turtle", "Vaquita", "Ocelot"]
var notEndangered: Set = ["Bison", "Hedgehog", "Ocelot"]

var endangered = animals.subtracting(notEndangered)
print(endangered)
// Printing result: ["Vaquita", "Mountain Gorilla", "Sea Turtle"]




var foodEmojis: Set = ["🥕", "🍇", "🌶️", "🍒", "🍎", "🥦"]
var fruitEmojis: Set = ["🍇", "🍎", "🍒"]

var veggieEmojis = foodEmojis.subtracting(fruitEmojis)
print(veggieEmojis)
