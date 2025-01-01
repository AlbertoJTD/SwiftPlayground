//: [Previous](@previous)

import Foundation

/*
 NOTE
 
 Tuples group together values that are enclosed in parentheses and separated by commas. Unlike any of the previous data types mentioned, tuples can include different types of data
 */


// If we wanted to access each value individually, we can use dot syntax along with the index of the value
var easyAsPie = ("easy as", 3.14)
var firstValue = easyAsPie.0   // "easy as"
var secondValue = easyAsPie.1  // 3.14


// We can also name a tuple’s elements by prepending each one with a name and a colon - similar to key-value pair syntax in dictionaries
var easyAsPie1 = (saying: "easy as", amount: 3.14)
var firstElementValue1 = easyAsPie.saying  // "easy as"
var secondElementValue1 = easyAsPie.amount // 3.14




