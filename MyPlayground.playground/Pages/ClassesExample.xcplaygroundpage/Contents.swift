//: [Previous](@previous)

import Foundation

/*
 The rule of thumb is to always use struct to start, and change it to class if inheritance is needed or use class instances for their reference typing.
 
 Classes are reference types, any copied class that has its properties altered will affect the original class from which it was copied.
 */



class Student {
    var name: String = ""
    var year: Int = 0
    var gpa: Double = 0.0
    var honors: Bool = false
}

var ferris = Student()
ferris.name = "Ferris Bueller"
ferris.year = 12
ferris.gpa = 3.81
ferris.honors = false





class Restaurant {
  var name: String = ""
  var type: [String] = [""]
  var rating: Double = 0.0
  var delivery: Bool = false
}

var bobsBurgers = Restaurant()
bobsBurgers.name = "Bob's Burgers"
bobsBurgers.type = ["Burgers", "Fast Food"]
bobsBurgers.rating = 3.5
bobsBurgers.delivery = true

print(bobsBurgers.name)
print(bobsBurgers.type)
print(bobsBurgers.rating)
print(bobsBurgers.delivery)






class Student2 {
  var name = ""
  var year = 0
  var gpa = 0.0
  var honors = false
  
  init(name: String, year: Int, gpa: Double, honors: Bool) {
    self.name = name
    self.year = year
    self.gpa = gpa
    self.honors = honors
  }
}
var bart = Student2(name: "Bart Simpson", year: 4, gpa: 0.0, honors: false)






class Restaurant2 {
  var name = ""
  var type = [""]
  var rating = 0.0
  var delivery = false

  // The init() goes here 🍝
  init(name: String, type: [String], rating: Double, delivery: Bool) {
    self.name = name
    self.type = type
    self.rating = rating
    self.delivery = delivery
  }
}

var laRatatouille = Restaurant2(name: "La Ratatouille", type: ["French"], rating: 4.7, delivery: false)

print(laRatatouille.name)
print(laRatatouille.type)
print(laRatatouille.rating)
print(laRatatouille.delivery)











/*
 Inheritance
 
 When one class inherits from another:
    - The new inheriting class is known as a subclass.
    - he class it inherits from is known as its superclass.
 */
class BankAccount {
  var balance = 0.0

  func deposit(amount: Double) {
    balance += amount
  }

  func withdraw(amount: Double) {
    balance -= amount
  }
}

class SavingsAccount: BankAccount {
  var interest = 0.0

  func addInterest() {
    let interest = balance * 0.005
    self.deposit(amount: interest)
  }
}





class Order {
  var items = [""]
  var subtotal = 0.0
  var tip = 0.0
  var total = 0.0

  func printReceipt() {
    print("Items:     \(items)")
    print("Subtotal:  $\(subtotal)")
    print("Tip:       $\(tip)")
    print("Total:     $\(total)")
  }
}

class DeliveryOrder: Order {
  var deliveryFee: Double = 2.0
}










/*
 Overriding Methods
 
 a subclass can provide its own custom implementation of a property or method that is inherited from a superclass. This is known as overriding
 
 To override a method, we can redeclare it in the subclass and add the override keyword to let the compiler know that we aren’t accidentally creating a method with the same name as the one in the parent class.
 */

class BankAccount2 {
  var balance = 0.0

  func deposit(amount: Double) {
    balance += amount
  }

  func withdraw(amount: Double) {
    balance -= amount
  }
}


class SavingsAccount2: BankAccount2 {
  var interest = 0.0
  var numWithdraw = 0

  func addInterest() {
    let interest = balance * 0.01
    self.deposit(amount: interest)
  }

  override func withdraw(amount: Double) {
    balance -= amount
    numWithdraw += 1
  }
}






class Order2 {
  var items = [""]
  var subtotal = 0.0
  var tip = 0.0
  var total = 0.0

  func printReceipt() {
    print("Items:     \(items)")
    print("Subtotal:  $\(subtotal)")
    print("Tip:       $\(tip)")
    print("Total:     $\(total)")
  }
}

class DeliveryOrder2: Order2 {
  var deliveryFee = 2.0
  
  // Write your code below 🧾
  override func printReceipt() {
    print("Items:     \(items)")
    print("Subtotal:  $\(subtotal)")
    print("Tip:       $\(tip)")
    print("Delivery:  $\(self.deliveryFee)")
    print("Total:     $\(total)")
  }
}

var order2 = DeliveryOrder2()
order2.items = ["Ramen", "Diet Coke"]
order2.subtotal = 14.69
order2.tip = 2.00
order2.deliveryFee = 3.00
order2.total = 19.69

order2.printReceipt()








/*
 Classes are Reference Types
 
 A value type is a type whose value is copied when it’s assigned to a variable or constant, or when it’s passed to a function
 
 Unlike value types, reference types are not copied when they are assigned to a variable or constant, or when they are passed to a function. Rather than a copy, a reference to the same existing instance is used.
 */
var krustyKrab = Restaurant()
krustyKrab.name = "The Krusty Krab"
krustyKrab.type = ["Seafood", "Burgers"]
krustyKrab.rating = 2.4
krustyKrab.delivery = true

var krustyKrab2 = krustyKrab
krustyKrab2.rating = 4.1

print(krustyKrab.rating) // Prints: 4.1
print(krustyKrab2.rating) // Prints: 4.1
