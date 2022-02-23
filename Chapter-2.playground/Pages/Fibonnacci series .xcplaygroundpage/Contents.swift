//: [Previous](@previous)

import Foundation
/*:Fibonacci series without recursion*/
func fibonacci(_ noOfTerms:Int)
{
// Initialising the first two terms
    
    var n1 = 0,n2 = 1,n3: Int
    if (noOfTerms == 0 || noOfTerms == 1)
    {
        print("\(noOfTerms)")
    }
        else
        {
            print("\(n1) \(n2)",terminator: " ")
            
// Loop for calculating the sum of previous two terms in sequence and updating the terms accordingly.
            
        for _ in 3...noOfTerms
            {
            n3 = n1+n2
            print("\(n3)",terminator: " ")
            n1=n2
            n2=n3
        }
}
}
fibonacci(10)

//: [Fibonacci series with recursion ](@next)
