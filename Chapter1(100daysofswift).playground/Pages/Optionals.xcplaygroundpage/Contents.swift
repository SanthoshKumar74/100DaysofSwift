//: [Previous](@previous)

import Foundation

/*:Optionals*/
// Optionals meaning the variable either has a value or no value at all nil
//Optional String array
var peoples: [String]?

peoples = ["Andrew","Phil","Mark"]


/*:Using If let to unwrap Optional*/
// unwrapped var people is not available outside if let block

if let people = peoples{
    print(people)         // after unwrappin an optional if it is not nil it is assigned to the specified variable.
}

/*:Guard Let*/
// guard let is used to exit a func or loop when unwrapping a optional, must contain an else block and return

func unwrapOptional(_ peop:[String]?)
{
    guard let people = peop
    else
    {
        return
    }
    print(people)     // unwrapped people is available outside guard let block
}
unwrapOptional(peoples)

/*:Force Unwrap*/
// force unwrapping optional. Use this only when sure optional wont contain nil. If nil is found while unwrapping optional code crashes
print(Int("10")!)

/*:Implicit Optional*/
// can use as if regular variable but crashes if the value is nil
// no need of optional Chaning

var percentage: Int!
percentage = 10
percentage += 50

/*:Nil coalescing*/
// unwraps optional when found nil provides a default value or assigns the unwrapped value

var pressure: Double?
let p = pressure ?? 0.0



/*: Optional Chaining */
// If found nil rest of line is ignored and returns nil


let string : String? =  nil
let hasSpaces = string?.contains(" ")


/*:try? and try!*/

//An enum case representing an error
enum errors: Error{
    case NotMultipleOf
}

// Throwing function
func isMultipleOf(_ no: Int,_ dvsr: Int)throws -> Bool{
    
    if (no % dvsr != 0){
        throw errors.NotMultipleOf
    }
    
    return true
}

// Normal execution of throwing function using a do catch block
do
{
 try isMultipleOf(40, 6)
}
catch
{
    print(error)
}

// try? changes the return type of function into optional, if it throws error nil is sent or else unwrapped value is sent
do
{
   try? isMultipleOf(60, 7)
}

// try! is like force unwrapping,It executes the code if found nil program crashes.
do{
    try! isMultipleOf(33, 11)
}

//: [Enums](@next)
