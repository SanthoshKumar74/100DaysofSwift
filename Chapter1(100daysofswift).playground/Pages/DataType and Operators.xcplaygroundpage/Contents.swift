import UIKit
/*:   Constants and Variables and Data Types
 */
// Swift will automatically infer the type or variable or constant using the initialised value
/* Creates a Constant of Type String */
let name = "Santhosh"

/// MultiLineString
var str = """
Let us see how
this line gets \
 printer
"""


/* Creates a Variable of Type Integer*/
var age = 25

/* isMarried is of Boolean type*/
var isMarried = false

/* bmi is of Double type which can store fractional values */
var bmi = 18.5


/* String interpolation lets us use a var or const inside a string*/
print("My name is \(name)")



/*: Collection Types */

/* Arrays let us store ordered collection values of same type as a single value, we can access the value by using an index staring from 0 */
var evenNumbers = [2,4,6,8,10,12]

/* Sets is unordered collection of values of same type, since it is unordered cannot access using an index, Sets cant have duplicate values*/
var oddNumbers = Set([1,3,5,7,9,11])



// Tuple can store different values of different types under a single value, They are fixed in size and type once initialised, Tuples can be accessed by either a given name or numerical position
var ed = (language : "Swift" , version : 5.0 , "Ios Development")

// Refer to tuple values using names
ed.language

// Refer to tuple parameters using index starting from 0
ed.2



/*: Dictionaries*/
// Dictionaries let us save values using a key-value pair, key - a reference used to access the value, Value- Value to be stored for particular key
// Default values are used when we try to access a key which was not in the dictionary

var dict = ["Morning": "Breakfast","Afternoon": "Lunch", "Night": "Dinner"]

// returns "Brunch" as "Evening" is not a part of dictionary
var eveningMeal = dict["Evening", default: "Brunch"]

// returns "Breakfast" as dictionary containg "Morning"
var morningMeal = dict["Morning", default: "Brunch"]


/*: Operators */
// same can used for *,-,/
let addNum = 2 + 2

let remainder = 256 % 5

let string1 = "Good"



// Operator Overloading, + can used to append strings, join two arrays
var wish = string1 + "morning"

//Compund assignment += means wish = wish + "Santhosh"
wish += "Santhosh"
//: [Comparison and Conditions](@next)
















