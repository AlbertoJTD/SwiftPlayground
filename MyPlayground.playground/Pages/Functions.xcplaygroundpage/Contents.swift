//: [Previous](@previous)

import Foundation

/*
 Function that returns nothing
 
 - greetingV1() we explicitly specify the returned data
 - greetingV2() we implicitly indicate that the function does not return anything
 */
func greetingV1() -> Void {
  print("Hey there!")
  print("How are you doing today?")
}

func greatingV2() {
    print("Hey there!")
    print("How are you doing today?")
}
greetingV1()
greatingV2()






func directionsToTimesSq() -> Void {
  print("Walk 4 mins to 34th St Herald Square train station.")
  print("Take the Northbound N, Q, R, or W train 1 stop.")
  print("Get off the Times Square 42nd Street stop.")
  print("Take lots of pictures! 📸")
}
directionsToTimesSq()









/*
 Executing and calling functions
 */
let birthYear = 1994
var currentYear = 2021

@MainActor
func findAge() -> Int {
  return currentYear - birthYear
}
print(findAge())




let weight = 70.0 // in Kilograms
let height = 1.73 // in Meters
func findBMI() -> Double {
  return weight / (height * height)
}

print(findBMI())








/*
 Using Parameters and Arguments
 
 
 NOTE
 - If a parameter exists, an argument must be passed in when the function is called. Otherwise, the compiler will throw an error.
 - The argument must be the same type of value that the parameter is declared to have.
 - When referencing a function, include the parameter name(s) in its title followed by a colon such as findGardenArea(side:).
 */
func findCircumference(diameter: Double) -> Double {
  return 3.14 * diameter
}

var result = findCircumference(diameter: 1)
print(result)





func timeToDestination(distance: Int, speed: Int) -> Int {
  let time = distance / speed
  return time
}

print(timeToDestination(distance: 6836, speed: 560))







/*
 Argument labels
 
 
 - Luckily, Swift gives us argument labels, a feature that can help make our functions, read in a sentence-like manner when we call them, while still allowing us to use parameter names in the function body
 - The following syntax lets us refer to the parameter name in the body of the function, while using the argument label to refer to the same parameter when calling the function
 
 
 func functionName(argumentLabel parameterName: type) {
     print(parameterName) // Notice that we use the parameter name in the body of the function
 }

 We call the function like so:

 functionName(argumentLabel: value)
 */

func setOvenTemperature(to temperature: Int) {
    print("Oven is now set to \(temperature) degrees")
    
}
 
setOvenTemperature(to: 400)
// Prints: Oven is now set to 400 degrees




var friendsList: [String] = []

@MainActor
func addFriend(named friendName: String){
    friendsList.append(friendName)
}

addFriend(named: "Juan")
addFriend(named: "Alice")
addFriend(named: "Bob")
addFriend(named: "Cindy")

print(friendsList)











/*
 Omitting Argument Labels
 
 - When an '_' underscore is specified ahead of a parameter name in the definition, only the argument value needs to be specified in the function call
 */

// Whith argument labels
func findWinnerV1(firstPoints: Int, secondPoints: Int) -> String {
    if firstPoints > secondPoints {
        return "Team 1 is the winner"
    } else {
        return "Team 2 is the winner"
    }
}
print(findWinnerV1(firstPoints: 5, secondPoints: 7))



// Using underscore
func findWinnerV2(_ firstPoints: Int, _ secondPoints: Int) -> String {
    if firstPoints > secondPoints {
        return "Team 1 is the winner"
    } else {
        return "Team 2 is the winner"
    }
}
print(findWinnerV2(5, 7))







let adults = 2
let students = 15

func museumEntry(_ numAdults: Int, _ numStudents: Int) -> Int {
  let studentTicket = 14
  let adultTicket = 25

  let total = (studentTicket * numStudents) + (adultTicket * numAdults)
  return total
}
print(museumEntry(adults, students))











/*
 Returning Multiple Values
 */
func favoriteBook() -> (name: String, author: String, yearPublished: Int) {
  return ("Harry Potter and the Philosopher's Stone", "J.K. Rowling", 1997)
}
let book = favoriteBook()
print(book) // Prints: (name: "Harry Potter and the Philosopher\'s Stone", author: "J.K. Rowling", yearPublished: 1997)
print(book.name) // Prints: Harry Potter and the Philosopher's Stone
print(book.author) // Prints: J.K. Rowling




func favoriteCuisine() -> (name: String, dish: String) {
  return ("Russian", "Pelmeni")
}

let cuisine = favoriteCuisine()
print("My favorite \(cuisine.name) dish is \(cuisine.dish)!")








/*
 Implicit Return
 */
// Using return keyword
func findProductV1(a: Int, b: Int) -> Int {
 return a * b
}

func findProductV2(a: Int, b: Int) -> Int {
 a * b
}





//func findRemainder(dividend: Int, divisor: Int) -> Int {
//  return dividend % divisor
//}
func findRemainder(dividend: Int, divisor: Int) -> Int {
    dividend % divisor
}
print(findRemainder(dividend: 10, divisor: 4))











/*
 Default Parameters
 */
func totalWithTip(total: Double, tip: Double = 0.2) -> Double {
 return total + (total * tip)
}
print(totalWithTip(total: 50)) // Prints: 60.0
print(totalWithTip(total: 50, tip: 0.15)) // Prints: 57.5



func bookingTicket(passengerName: String = "Alberth", seatClass: String = "Economy", timeOfDeparture: Int) -> String {
  return "\(passengerName), your seat class is \(seatClass), and you will be departing at \(timeOfDeparture)."
}
print(bookingTicket(timeOfDeparture: 9))
print(bookingTicket(seatClass: "Business", timeOfDeparture: 9))













/*
 Variadic Parameters
 
 NOTE
 - Another parameter supported by Swift is the variadic parameter. A variadic parameter is a parameter that accepts zero or more values of a certain type. A variadic parameter is useful for cases in which we may need to pass in more than one value for a single parameter.

 - A variadic parameter is denoted by a name, type, and three consecutive dots ... in the function declaration. It’s important to note that a Swift function cannot have more than one variadic parameter.
 */
func avgExchangeRate(numbers: Double...) -> Double {
  var total: Double = 0
  let numValues = Double(numbers.count)
     
  for number in numbers {
    total += number
  }

  return total / numValues
}





func avgSongLength(times: Int...) -> Int {
  var total: Int = 0

  for time in times {
    total += time
  }

  return total / times.count
}
print(avgSongLength(times: 183, 176, 180, 176, 184, 179, 181, 180, 172, 178))















/*
 In-Out Parameters
 
 NOTE
 All parameters passed into a Swift function are constants, so you can’t change them. If you want, you can pass in one or more parameters as inout, which means they can be changed inside your function, and those changes reflect in the original value outside the function.
 */
var currentColor = "green"

func batteryInterface(percentage: Int, batteryColor: inout String) {
  if percentage < 5 {
    batteryColor = "red"
  } else if percentage < 15 {
    batteryColor = "yellow"
  } else {
    batteryColor = "green"
  }
}

batteryInterface(percentage: 12, batteryColor: &currentColor)
print(currentColor) // Prints: yellow






var currentGeneratorState = "Off"
func generators(powerOutage: Bool, state: inout String) -> Void {
  if powerOutage {
    state = "On"
  } else {
    state = "Off"
  }
}

generators(powerOutage: true, state: &currentGeneratorState)
print(currentGeneratorState)

