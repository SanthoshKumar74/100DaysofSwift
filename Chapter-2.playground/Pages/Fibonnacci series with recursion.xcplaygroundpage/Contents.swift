import UIKit
func fibonnacci(_ noOfTerms:Int) -> Int
{
//  Checking Condition for 0 and 1 terms
    
    if noOfTerms == 0 || noOfTerms == 1{
        return noOfTerms
    }
    else
        
// Using Recursion to find the nth term in the series
        
    {
        return fibonnacci(noOfTerms - 2) + fibonnacci(noOfTerms - 1)
    }
}

// As the function returns the nth term in the sequence. We use a loop to display the sequence.

for x in 0...15{
    print(fibonnacci(x),terminator:" ")
}

//: [Next](@next)
