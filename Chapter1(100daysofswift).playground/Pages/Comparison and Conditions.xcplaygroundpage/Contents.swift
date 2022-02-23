//: [Previous](@previous)

import Foundation
/*: Comparison and Conditions */

// If else  Statement
// If block is executed when the statement proves to be true or else block is executed.

let no = 6
if (no%2 == 0){                       // == represents "equals to"
    print("/(no) is even")
}
else {
    print("/(no) is odd")
}

/*: Combining two conditions */


let year = 2100
// The && condition returs true only if both the conditions on either side of the operator is true

if (year%4 == 0 && year%100 != 0)
    {
    print("\(year) is leap year")
    }
else if (year%4 == 0 && year%400 == 0){
    print("\(year) is not a leap year")
    
    }
else
    {
    print("\(year) is not a leap year")
    }

/*: Ternary Operator*/
let num = 4
//Assign value based on a condition

print(num % 2 == 0 ? "\(num) is odd" : "\(num) is even")


/*: Loops */

/*:For loop*/
// For loops are used to iterate through a collection type. Range operator return a list of the specified range.
// Takes all numbers from 1 to 10 including 10 (1..<10 does not include 10)

for num in 1...10{
    print(num)
}

/*:While Loop*/
//Loop is executed based on a condition. The iteration continues till conditions turns to be false.

var count = 1
while count <= 100{ // checks condition before the execution of loop, loops stops when condition fails
    count += 1
    if count == 50{
        // Break keyword exits out of the Loop.
        break}
}
count = 1

/*:Repeat Loop*/
// Repeat Loop are same as While loop except the loop executes once without checking the condition and if the condition is true loop continues until condition turns out to be false


repeat{
    count += 1
    
    
    if (count % 2 == 0){
// Continue Keyword skips the current iteration of loop. Statements below the continue keyword wont be executed.
        
    continue
    }
    print(count)
}while count <= 99
//: [Functions](@next)
