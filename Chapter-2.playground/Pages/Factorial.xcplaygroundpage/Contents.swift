//: [Previous](@previous)

import Foundation

func factorial(_ number:Int){
    var fact = 1
    
// Checking default condition for number 0.
    
    if number == 0
    {
        print("Factorial of \(number) is \(fact)")
    }
    else
        
// using loop to continuously calculate and update the fact variable
        
    {
    for i in 1...number
        {
        fact = fact*i
        }
        
//Displaying the factorial after completion of loop.
        
    print("Factorial of \(number) is \(fact)")
    }
}
factorial(4)

//: [Next](@next)
