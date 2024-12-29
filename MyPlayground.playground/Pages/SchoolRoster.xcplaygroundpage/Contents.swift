//: [Previous](@previous)

import Foundation

var spanish101: Set = ["Angela", "Declan", "Aldany", "Alex", "Sonny", "Alif", "Skyla"]
var german101: Set = ["Angela", "Alex", "Declan", "Kenny", "Cynara", "Adam"]
var advancedCalculus: Set = ["Cynara", "Gabby", "Angela", "Samantha", "Ana", "Aldany", "Galina", "Jasmine"]
var artHistory: Set = ["Samantha", "Vanessa", "Aldrian", "Cynara", "Kenny", "Declan", "Skyla"]
var englishLiterature: Set = ["Gabby", "Jasmine", "Alex", "Alif", "Aldrian", "Adam", "Angela"]
var computerScience: Set = ["Galina", "Kenny", "Sonny", "Alex", "Skyla"]



var allStudents = spanish101.union(german101).union(advancedCalculus).union(artHistory).union(englishLiterature).union(computerScience)


for student in allStudents {
  print(student)
}
print("\nTotal of students: \(allStudents.count)")


// The school needs to know which students aren’t taking any language classes
var noLanguage = allStudents.subtracting(spanish101).subtracting(german101)
print("\nStudents that aren't taking laguage classes: \(noLanguage)")


// Administration wants to know which students are taking either spanish101 or german101, but not both.
var spanishOrGerman = spanish101.symmetricDifference(german101)
print("\nStudents are taking either spanish101 or german101, but not both: \(spanishOrGerman)")


// The school offers a language award to any student who takes all three of the following classes: spanish101, german101, and englishLiterature.
var languageAwardWinners = spanish101.intersection(german101).intersection(englishLiterature)
print("\nAward to any student who takes all three of the following classes: spanish101, german101, and englishLiterature => \(languageAwardWinners)")



var sevenPlus: Int = 0
var classSet: Set = [spanish101, german101, englishLiterature, computerScience, artHistory, advancedCalculus]

for classes in classSet {
  if classes.count >= 7 {
    sevenPlus += 1
  }
}
print("\nNumber of classes with greater than or equal to 7 students: \(sevenPlus)")



// The student "Skyla" has transferred to a new school
allStudents.remove("Skyla")

spanish101.remove("Skyla")
german101.remove("Skyla")
advancedCalculus.remove("Skyla")
artHistory.remove("Skyla")
englishLiterature.remove("Skyla")
computerScience.remove("Skyla")



// The students from the computerScience class and advancedCalculus class are going on a field trip.
var fieldTrip = computerScience.union(advancedCalculus)
print("\nThe students from the computerScience class and advancedCalculus class are going on a field trip: \(fieldTrip)")



// The day of the field trip, there is a test in german101.
fieldTrip = german101.subtracting(fieldTrip)
print("\nThe day of the field trip, there is a test in german101: \(fieldTrip)")

