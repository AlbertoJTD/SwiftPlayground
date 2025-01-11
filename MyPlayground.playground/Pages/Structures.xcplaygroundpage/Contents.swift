//: [Previous](@previous)

import Foundation

/*
 Structure
 
 With structures, we can create blueprints of everyday objects and use this blueprint to make specific instances of these objects directly in our program.
 
 This idea of a blueprint structure provides customization and programmatically allows us to create as many different users as we want. Essentially, we were able to take a complex object like a user and represent them in code!
 
 
 
 NOTE:
 The struct keyword followed by the name of the structure creates the structure. By convention, this name is capitalized. Then inside the curly braces that follow is the body and where properties and methods unique to the structure are defined.
 */


// Structures tend to have singular names, hence Dog instead of Dogs.
struct Dog {
  var age: Int
  var isGood: Bool
}

struct Notebook {
  var title: String
  var pages: Int
}






/*
 Default Property Values
 */
struct Cat {
  var age = 0
  var isGood = true
}

struct Book {
  var title: String = ""
  var pages: Int = 0
}





/*
 Creating an Instance
 */
var eloise = Cat()
var myFavoriteBook = Book()






/*
 Accessing and Editing Properties
 */
var bucket = Cat()
print(bucket.age)    // Prints: 0
print(bucket.isGood) // Prints: true

bucket.age = 7
bucket.isGood = false



var myFavBook = Book()
print(myFavBook.pages)

myFavBook.pages = 640
print(myFavBook.pages)

myFavBook.title = "Hello world"
print(myFavBook.title)









/*
 The Init Method
 
 If we know that our struct instances vary a lot from one to another, we can include an init() method for customization.
 
 The init() method is special since it doesn’t require the func keyword and gets called upon instance creation. Like functions, methods can have parameters but don’t need to have any. Another unique feature is that the init() method uses the self keyword to reference itself
 */
struct Dog2 {
  var age : Int
  var isGood : Bool

  init (age: Int, isGood: Bool) {
    self.age = age
    self.isGood = isGood
  }
}

// Using the init() method:
var bucket2 = Dog2(age: 4, isGood: true)
print(bucket2.age)    // Prints: 4
print(bucket2.isGood) // Prints: true








/*
 Memberwise Initialization
 
 Swift come with a built-in memberwise initializer that can be used to assign values upon instance creation. So in certain cases, we don’t actually need to use init()!
 
 Notice that we didn’t need an init() method to provide initial values — but, we still have to provide arguments for all the initial values! It’s still important that we pass in the arguments in the order that matches the ordering of the properties in the Dog structure.
 */
struct Dog3 {
  var age: Int
  var isGood: Bool
}
var eloise2 = Dog3(age: 5, isGood: true)


struct Band {
  var genre: String
  var members: Int
  var isActive: Bool
}

var maroon5 = Band(genre: "pop", members: 5, isActive: true)










/*
 Structure Methods
 
 In addition to the init() method, we can also provide our structs with custom methods that instances can call. These instance methods are created like a normal function but within the scope of the structure itself
 */
struct Dog4 {
  var age : Int
  var isGood : Bool

  init(age: Int, isGood: Bool) {
    self.age = age
    self.isGood = isGood
  }
  
  // We've added a bark() method:
  func bark() {
    print("woof")
  }
}

var marcus = Dog4(age: 4, isGood: true)
marcus.bark() // Prints: woof




struct Band2 {
  var genre: String
  var members: Int
  var isActive: Bool
  
  init(genre: String, members: Int, isActive: Bool) {
    self.genre = genre
    self.members = members
    self.isActive = isActive
  }
  
  func pumpUpCrowd() -> String {
    if self.isActive {
      return "Are you ready to ROCK?"
    }

    return "..."
  }
  
}

var fooFighters = Band2(genre: "rock", members: 6, isActive: true)
print(fooFighters.pumpUpCrowd())








/*
 Mutating Methods
 
 While a mutating method may sound like a term out of a mad scientist’s lab, it’s actually how we change an instance’s properties using an instance method. To do so, we need the mutating keyword
 */
struct Rabbit {
  var age: Int
  var isGood: Bool

  init(age: Int, isGood: Bool) {
    self.age = age
    self.isGood = isGood
  }

  // birthday() is a mutating method:
  mutating func birthday() -> Int {
    print("Best bunny")
    self.age += 1
    return self.age
  }
}

var bunny = Rabbit(age: 7, isGood: true)
var newAge = bunny.birthday()
// Prints: Best doggy

print(newAge) // Prints: 8






struct MusicBand {
  var genre: String
  var members: Int
  var isActive: Bool
  
  init(genre: String, members: Int, isActive: Bool) {
    self.genre = genre
    self.members = members
    self.isActive = isActive
  }
  
  func pumpUpCrowd() -> String {
    if self.isActive {
      return "Are you ready to ROCK?"
    } else {
      return "..."
    }
  }

  mutating func changeGenre(newGenre: String) -> String {
    self.genre = newGenre
    return self.genre
  }
}

var journey = MusicBand(genre: "jazz", members: 5, isActive: true)
var bandsNewGenre = journey.changeGenre(newGenre: "rock")
print(bandsNewGenre)




/*
 Print data type
 */
print(type(of: eloise))







/*
 Structures are Value Types
 
 Structures are value types, this means every time an instance is created or copied, the instance has its own set of unique values
 Structures are value types, any copied struct that has its properties altered will not affect the original structure from which it was copied.
 
 
 NOTE:
 There are some nuances that we should go over from the example above.

    - First we created youngDog, an instance of Dog, that was initialized with the properties: age: 5 and isGood: true.
    - Immediately afterward, we create another variable oldDog that has the value of youngDog.
    - We assign the age of oldDog a value of 10, but we left youngDog alone.
    - When we print oldDog.age it prints 10.
    - When we print youngDog.age it prints 5. 🤔
 
 
 When we created oldDog using youngDog, oldDog is only storing the values of youngDog. The takeaway here is that: any changes we make to an instance of a structure, like oldDog, it’s properties will not affect other instances.
 */
var youngDog = Dog(age: 5, isGood: true)
var oldDog = youngDog
oldDog.age = 10

print(oldDog.age)   // Prints: 10
print(youngDog.age) // Prints: 5




struct Finch {
  var lengthInCm: Double
  var nestLocation: String

  init(lengthInCm: Double, nestLocation: String) {
    self.lengthInCm = lengthInCm
    self.nestLocation = nestLocation
  }
}

var groundFinch = Finch(lengthInCm: 15.0, nestLocation: "Bush")

var cactusFinch = groundFinch
cactusFinch.nestLocation = "Cactus"

print(cactusFinch.nestLocation)
print(groundFinch.nestLocation)
