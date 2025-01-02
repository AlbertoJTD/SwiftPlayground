//: [Previous](@previous)

import Foundation

/*
 NOTE:
 - Optional binding is used to unwrap optionals so we can access their values. There are different methods of optional binding, like forcibly unwrapping or implicitly unwrapping
 - An if-let statement is a conditional statement that checks if the value inside an optional really exists and if it does, it assigns that value to a variable
 - In an if-let statement, the variable we created can only be accessed within the body of the if-let statement.
 */

var animalNames = [
  "Zebra": "Equus quagga",
  "Giraffe": "Giraffa camelopardalis",
  "Elephant": "Proboscidea elephantide"
]
var giraffeSciName = animalNames["Giraffe"]
// Optional("Giraffa camelopardalis")






if let giraffeSci = animalNames["Giraffe"] {
  print("A giraffe is also known as a \(giraffeSci).")
} else {
  print("There is no value.")
}




if let unicornSci = animalNames["Unicorn"] {
  print("A unicorn is also known as a \(unicornSci).")
} else {
  print("There is no value.")
}
// Prints: There is no value.




if let animalSci = animalNames["KEY"] {
  print("This animal is also known as a \(animalSci).")
} else {
  print("There is no value.")
}





if let giraffeSciTest = animalNames["Giraffe"] {
  print("A giraffe is also known as a \(giraffeSciTest).")
} else {
  print("There is no value.")
}

// error: use of unresolved identifier 'giraffeSci'
//print("\(giraffeSciTest) are herbivores.")




