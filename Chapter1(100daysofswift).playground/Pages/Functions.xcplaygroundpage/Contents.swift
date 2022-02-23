//: [Previous](@previous)

import Foundation
/*:Functions*/

//Functions are used for reuse a piece of code
// It can take number of parameters and return a number of parameters.
//:Function with no parameter no return type

func celebrate(){
    print("We are celebrating")
}
// we can call function using function name to execute the code
celebrate()

//:Function with parameter and a return type
//func <name>(internalparameter external parameter: <Type>) -> <Return Type>
func isLeapYear(with year: Int) -> Bool
{
    if (year%4 == 0 && year%100 != 0)
    {
       return true
    }else if (year%4 == 0 && year%400 == 0){
        return false
    }else{
        return false
    }
}
// Internal paramters are parameters using inside func definition
//Externam parameters are used in the function call.
//Calling with with external parameter
isLeapYear(with:1996)


/*:Function returning more than one value*/
// Using tuples to return more than one value
// _ is used to omit external parameter name. no need to specify an external parameter name when calling function

func squaresAndcubes (_ num: Int) -> (Int,Int)
{
    return (num*num, Int(pow(Double(num), 3)))
}
let (sqr,cube) = squaresAndcubes(3)
sqr
cube

/*:Vardiac functions*/
//Functions which accept number of input values as single value
// Values passed are converted into an array.

func squares (_ numbers: Int...) -> [Int]
{
    var result = [Int]()
    for num in numbers{    //numers is converted into an array integers that is passsed to the function
        result += [num*num]
    }
    return result
}
squares(2,3,4,5)

//: Throwing function
//Throwing functions are function which may throw an error

enum errors: Error{
    case NotMultipleOf
}

// To mark a function as throwing function add throw keyword at the end of the parameter list

func isMultipleOf(_ no: Int,_ dvsr: Int)throws -> Bool{
    
    if (no % dvsr != 0){
        throw errors.NotMultipleOf
    }
    
    return true
}

/*: Do and catch Block*/
// Do and Catch Blocks are used to call throwing functions.
//the fuction call is marked with a try keyword inside do block. If function throws an error catch block is executed
do{
    
 try isMultipleOf(40, 6)
}
catch
    // The error is passed with a parameter name 'error' to the cathc block which we can use inside to handle errors
{
    print(error)
}
//: inout parameter
//inout parameter changes the original value of the variable. The parameter must be passed with & sign.
// inout keyword should be used before the parameter in function definition
func negative (num: inout Int){
    num = -num
}

var profit = 3600
negative(num: &profit) // profit is now -3600
//: [Closures](@next)
