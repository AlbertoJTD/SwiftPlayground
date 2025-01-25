//: [Previous](@previous)

import Foundation

/*
 Private properties
 */
struct Cat {
    private var numberOfLives : Int
    
    init(numberOfLives: Int){
        self.numberOfLives = numberOfLives
    }
    
    mutating func loseOneLife() {
        self.numberOfLives -= 1
        print(numberOfLives)
    }
}

var scrambles = Cat(numberOfLives: 9)
scrambles.loseOneLife()



struct Office {
    let paperclipCost = 10
    private var paperclipSales: Int

    init(paperclipSales: Int) {
      self.paperclipSales = paperclipSales
    }

    func printTotalRevenue() {
        let totalRevenue = paperclipSales * paperclipCost
        print("Our total revenue this month is \(totalRevenue).")
    }
}

var alphaOffice: Office = Office(paperclipSales: 18)
alphaOffice.printTotalRevenue()

// Attempt to access a private property
// let invalidAccess = alphaOffice.paperclipSales




/*
 Private methods
 */
struct WizardCat {
    private func secreatSpell() -> String {
        "Abracadabra"
    }
}
var myWizardCat = WizardCat()
//myWizardCat.secreatSpell()


struct Office2 {
    let paperclipCost = 10
    private var paperclipSales: Int

    init(paperclipSales: Int) {
        self.paperclipSales = paperclipSales
    }

    private func getSecretRevenue() -> Int {
      return 100
    }

    func printTotalRevenue() {
        let totalRevenue = (paperclipSales * paperclipCost) + getSecretRevenue()
        print("Our total revenue this month is (totalRevenue).")
    }

}

let alphaOffice2 = Office2(paperclipSales: 18)
alphaOffice2.printTotalRevenue()
// alphaOffice.getSecretRevenue()



/*
 Using read-only computed properties
 - You should declare a variable and a get block to return a private properties
 */

struct Office3 {
    let paperclipCost = 10
    private var paperclipSales: Int

    // Create a Read-only Computed Property
    var totalRevenue: Int {
      get {
        return (paperclipCost * paperclipSales ) + getSecretRevenue()
      }
    }

    init(paperclipSales: Int) {
        self.paperclipSales = paperclipSales
    }

    private func getSecretRevenue() -> Int {
        return 100
    }
}

let alphaOffice3 = Office3(paperclipSales: 18)
print(alphaOffice3.totalRevenue)







/*
 Creating Setters for computed properties
 */
struct Office4 {
    let paperclipCost = 10
    private var paperclipSales: Int

    var totalRevenue: Int {
        get {
            return (paperclipCost * paperclipSales) + getSecretRevenue()
        }
        set(newTotalRevenue) {
          paperclipSales = (newTotalRevenue - getSecretRevenue()) / paperclipCost
        }
    }

    init(paperclipSales: Int){
        self.paperclipSales = paperclipSales
    }

    private func getSecretRevenue() -> Int {
        return 100
    }

    func printTotalRevenue() {
        print("Our total revenue this month is \(totalRevenue)")
    }
}

var alphaOffice4 = Office4(paperclipSales: 18)
// Set the new total revenue
alphaOffice4.totalRevenue = 400
alphaOffice4.printTotalRevenue()






/*
 Using Property Observers
 - Use 2 keywords
    - willSet => This is called right before we set the property
    - didSet => This is called right afterward
 */
struct Cat2 {
    private var numberOfLives : Int {
        willSet {
            print("Uh-oh, number of lives is changing to (newValue)")
        }
        didSet(oldLives) {
            print("Welp, we don’t have (oldLives) anymore")
        }
    }

    init(numberOfLives: Int){
        self.numberOfLives = numberOfLives
    }

    mutating func loseOneLife() {
        self.numberOfLives -= 1
    }
}

var scrambles2 = Cat2(numberOfLives: 9)
scrambles2.loseOneLife()
// Prints to console:
// Uh-oh, number of lives is changing to 8
// Welp, we don’t have 9 anymore




struct Office5 {
    var paperclipCost = 10
    private var paperclipSales: Int {
      willSet {
        print("We adjusted the sales to \(newValue) paperclips.")
      }
      didSet {
        print("Originally, we sold \(oldValue) paperclips.")
      }
    }

    var totalRevenue: Int {
        get {
            return (paperclipSales * paperclipCost) + getSecretRevenue()
        }
        set(newTotalRevenue) {
            paperclipSales = (newTotalRevenue - getSecretRevenue()) / paperclipCost
        }
    }

    init(paperclipSales: Int) {
        self.paperclipSales = paperclipSales
    }

    private func getSecretRevenue() -> Int {
        return 100
    }

    func printTotalRevenue() {
        print("Our total revenue this month is \(totalRevenue)")
    }
}

var alphaOffice5 = Office5(paperclipSales: 18)
alphaOffice5.totalRevenue = 400
alphaOffice5.printTotalRevenue()






/*
 Implementing a Private Setter
 */
struct Cat3 {
    public private(set) var numberOfLives : Int = 9
}
var scrambles3 = Cat3()

// Prints: 9
print(scrambles3.numberOfLives)

// This causes a compiler error due to invalid access
//scrambles3.numberOfLives = 10





struct Office6 {
    var paperclipCost = 10

    // Give the paperclipSales property a private setter
    public private(set) var paperclipSales: Int {
        willSet {
            print("We adjusted the sales to \(newValue) paperclips.")
        }
        didSet {
            print("Originally we sold \(oldValue) paperclips.")
        }
    }

    var totalRevenue: Int {
        get {
            return (paperclipSales * paperclipCost) + getSecretRevenue()
        }
        set(newTotalRevenue) {
            paperclipSales = (newTotalRevenue - getSecretRevenue()) / paperclipCost
        }
    }

    init(paperclipSales: Int) {
        self.paperclipSales = paperclipSales
    }

    private func getSecretRevenue() -> Int {
        return 100
    }

    func printTotalRevenue() {
        print("Our total revenue this month is \(totalRevenue).")
    }
}

var alphaOffice6 = Office6(paperclipSales: 18)
alphaOffice6.totalRevenue = 400
alphaOffice6.printTotalRevenue()

// Print the value of paperclipSales to the console.
print(alphaOffice6.paperclipSales)

// Attempt to set the value of paperclipSales. This will cause an error
// alphaOffice.paperclipSales = 10










/*
 Defining a type property
 
 - This allows to define a property/method associated directly with the struct and not to an instance of that struct
 */
struct Office7 {
    let paperclipCost = 10
    static var paperclipSalesRecord: Int = 0

    private var paperclipSales: Int  {
        willSet {
            print("We adjusted the sales to (newValue) paperclips")
            if newValue > Office7.paperclipSalesRecord {
              Office7.paperclipSalesRecord = newValue
              print(Office7.paperclipSalesRecord)
            }
        }
        didSet {
            print("Originally we sold (oldValue) paperclips")
        }
    }

    var totalRevenue : Int {
        get {
            return (paperclipSales * paperclipCost) + getSecretRevenue()
        }
        set(newTotalRevenue) {
            paperclipSales = (newTotalRevenue - getSecretRevenue()) / paperclipCost
        }
    }

    init(paperclipSales: Int){
        self.paperclipSales = paperclipSales
    }

    private func getSecretRevenue() -> Int {
        return 100
    }

    func printTotalRevenue() {
        print("Our total revenue this month is (totalRevenue)")
    }
    
    static func displayDescription() {
        print("This is a great office!")
    }

}

var alphaOffice7 = Office7(paperclipSales: 18)
alphaOffice7.totalRevenue = 400
alphaOffice7.printTotalRevenue()
Office7.displayDescription()








/*
 Extensions
 
 - When writing a struct/class/enum it may be helpful to divide the code into several different sections. By using an extension, you can continue writing the definition of a struct/class/enum anywhere in your codebase
 */
struct Cat4 {
    let name: String
    let age: Int
}

extension Cat4 {
    static let famousCats = [
        Cat4(name: "Stubbs", age: 20),
        Cat4(name: "Sweet Tart", age: 12),
        Cat4(name: "Hank the Cat", age: 13)
    ]
}

print(Cat4.famousCats.count) // prints 3




// You can extend Swift Standard Library
extension Int {
    var isEven: Bool {
        isMultiple(of: 2)
    }
}








struct Office8 {
    let paperclipCost = 10
    static var paperclipSalesRecord: Int = 0
    private var paperclipSales: Int  {
        willSet {
            print("We adjusted the sales to \(newValue) paperclips")
            if newValue > Office8.paperclipSalesRecord {
              Office8.paperclipSalesRecord = newValue
            }
        }
        didSet {
            print("Originally we sold \(oldValue) paperclips")
        }
    }

    var totalRevenue : Int {
        get {
            return (paperclipSales * paperclipCost) + getSecretRevenue()
        }
        set(newTotalRevenue) {
            paperclipSales = (newTotalRevenue - getSecretRevenue()) / paperclipCost
        }
    }

    init(paperclipSales: Int){
        self.paperclipSales = paperclipSales
    }
    private func getSecretRevenue() -> Int {
        return 100
    }
    func printTotalRevenue() {
        print("Our total revenue this month is \(totalRevenue)")
    }
}

// Write your extension here:
extension Office8 {
  static func printCurrentRecord() {
    print("The current record for paperclip sales is \(paperclipSalesRecord)")
  }

  var paperclipColor: String { return "gray" }
}

var alphaOffice8 = Office8(paperclipSales: 18)
alphaOffice8.totalRevenue = 400

// Use the new methods and properties here:
Office8.printCurrentRecord()
print("Alpha Office’s paperclips are \(alphaOffice8.paperclipColor)")

