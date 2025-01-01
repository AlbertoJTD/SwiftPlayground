//: [Previous](@previous)

import Foundation


/*
 NOTE:
 - Dictionaries are unordered- when we use print() to output a dictionary, the order of the elements may not appear in the order they were added in.
 */


// Initialize empty dictionaries
var yearlyPopulation: [Int: Int] = [:] // V1
var yearlyPopulation2 = [Int: Int]() // V2

// var emptyLiteral = [String: Int]()
var emptyLiteral: [String: Int] = [:]
var emptyInitializer = [String: Bool]()





/*
 Initialize dictionaries with elements
 */
var fruitStand: [String: Int] = [
  "Apples": 12,
  "Bananas": 20
]

var roleModels: [String: String] = [
  "Mr. Rogers": "Fred McFeely Rogers",
  "The Crocodile Hunter": "Stephen Robert Irwin",
  "Bill Nye the Science Guy": "William Sanford Nye"
]

print(roleModels)






/*
 Type Inference
 */
// Explicitly specify the data type for the values stored in the dictionary
var fruitStandV1: [String: Int] = [
  "Apples": 12,
  "Bananas": 20
]

// Type inference
var fruitStandV2 = [
  "Apples": 12,
  "Bananas": 20
]

var movieYears = [
  "Finding Nemo": 2003,
  "Toy Story": 1995
]

print(movieYears)





/*
 Adding elements
 */
var donutPrices = [
  "Strawberry": 2,
  "Chocolate": 3
]
donutPrices["Boston Cream"] = 4
print(donutPrices)





var teaSteepingTemperature = [
  "Black": 212,
  "Oolong": 185,
  "White": 185
]

teaSteepingTemperature["Green"] = 185
teaSteepingTemperature["Rooibos"] = 212

print(teaSteepingTemperature)











/*
 Updating Elements
 */
var musicGenre = [
  "Duke Ellington": "Jazz",
  "Taylor Swift": "Country",
  "David Bowie": "Rock"
]
musicGenre["Taylor Swift"] = "Pop"
musicGenre.updateValue("Pop", forKey: "Taylor Swift")




var abbreviations = [
  "LOL": "Laboring Over Latkes",
  "LMK": "Let Me Know",
  "BRB": "Bringing Radishes Back",
  "GJOYC": "Great Job On Your Code"
]
abbreviations["LOL"] = "Laugh Out Loud"
abbreviations.updateValue("Be Right Back", forKey: "BRB")

print(abbreviations)










/*
 Removing Elements
 
 NOTE:
 - The keyword 'nil' describes something as being empty or having no value
 - If we were to set the value of a key to 'nil', the key-value pair would be removed from the dictionary
 */
var bookShelf = [
  "Goodnight Moon": "Margaret Wise Brown",
  "The BFG": "Roald Dahl",
  "Falling Up": "Shel Silverstein"
]

bookShelf["The BFG"] = nil // Remove a specific value
bookShelf.removeValue(forKey: "The BFG") // Remove a specific value
bookShelf.removeAll() // Remove all the elements






var rainbowHex = [
  "red": "#ff0000",
  "pink": "#ffc0cb",
  "yellow": "#ffff00",
  "maroon": "#800000",
  "green":  "#00ff00",
  "blue": "#0000ff",
  "violet": "#ee82ee"
]

rainbowHex["maroon"] = nil
rainbowHex.removeValue(forKey: "pink")
rainbowHex.removeAll()
print(rainbowHex)









/*
 Inspecting a Dictionary
 */
// Declare an empty dictionary
var pocketChange: [String: Int] = [:]

// Check if dictionary is empty
print(pocketChange.isEmpty)  // Prints: true

// Add a value to the dictionary
pocketChange["Nickel"] = 3

// Check if dictionary is empty
print(pocketChange.isEmpty)  // Prints: false

// Print how many elements are in dictionary
print(pocketChange.count)    // Prints: 1





var numberOfSides = [
  "triangle": 3,
  "square": 4,
  "rectangle": 4,
  "decagon": 10,
  "triacontagon": 30
]

if numberOfSides.isEmpty {
  print("This dictionary has no elements in it.")
} else {
  print(numberOfSides.count)
}













/*
 Accessing Values
 */
var fruitNames = [
  "mango": "Mangifera indica",
  "banana": "Musa paradisicum",
  "apple": "Pyrus malus"
]

var appleScientific = fruitNames["apple"]
/*
 NOTE: The optional type is used in Swift when a value may not exist

 - This would print: Optional("Pyrus malus")
 - For dictionaries, we might be trying to access a key that doesn’t exist, so as a precaution we first get an optional instead of getting the exact value.
 */
print(appleScientific ?? "No value found")


/*
 There are two methods for extracting values from Optionals
 */
// if-let statements are used to check if a real value exists inside of an optional. If the value exists, the optional will be unwrapped and assigned to a variable
if let appleScientific1 = fruitNames["apple"] {
  print(appleScientific1)
} else {
  print("This key does not exist.")
}

// If we are absolutely positive a key exists within a dictionary, we can add ! at the end of the statement
var appleScientific2 = fruitNames["apple"]!
// This print: "Pyrus malus"



/*
 Example 2
 */
var flowerNames = [
  "Lily": "Lilium",
  "Sunflower": "Helianthus",
  "Orchid": "Orchidaceae",
  "Daffodil": "Narcissus"
]

// var sunflowerScientific = flowerNames["Sunflower"]
var sunflowerScientific = flowerNames["Sunflower"]!
print(sunflowerScientific)

if let lilyScientific = flowerNames["Lily"] {
  print("A lily is referred to as a \(lilyScientific) in the science community.")
}


















/*
 Iterating through a Dictionary
 */
var classGrades = [
  "Raymond": 100,
  "Rosa": 82,
  "Jake": 73,
  "Terry": 90
]
for (name, grade) in classGrades {
  print("\(name) has a grade of \(grade)")
}




var mythology = [
  "Zeus": "Jupiter",
  "Athena": "Minerva",
  "Poseidon": "Neptune",
  "Demeter": "Ceres"
]
for (greekName, romanName) in mythology {
  print("\(greekName) is also known as \(romanName)")
}













/*
 Using .keys and .values
 */
var fruitList = [
  "Apples": 12,
  "Bananas": 20,
  "Oranges": 18
]
print(fruitList.keys)

for fruit in fruitList.keys {
  print(fruit)
}



var total = 0
for fruitStock in fruitList.values {
  total += fruitStock
}
print(total)  // Prints: 50






var lemonadeStand = [
  "April": 8.50,
  "May": 12.75,
  "June": 22.50,
  "July": 38.25,
  "August": 32.50,
  "September": 11.50
]
var totalStand: Double = 0.0

for monthlyProfit in lemonadeStand.values {
    totalStand += monthlyProfit
}

print("Total profits are \(totalStand)")
