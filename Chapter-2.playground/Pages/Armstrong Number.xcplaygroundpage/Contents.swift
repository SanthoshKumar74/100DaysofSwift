//: [Previous](@previous)

import Foundation

func armstrong(_ number:Int)
{
    var armNum = 0
    var num = number
    var remainder = 0

    while(num > 0)
    {
// Isolating the  lastdigit
        
        remainder = num%10
        
// Rasing the digit to the power of three and updating the armNumber variable.
        
        armNum += Int(pow(Double(remainder),Double(3)))
        
//Removing last Digit to continue to find the cubes of all the digits.
        
        num = num/10
    }
    
//Checking the condition if sum of cubes of digits are equal to the actual number.
    
    if armNum == number
    {
        print("\(number) is an Armstrong number")
        
    }
    else{
            print("\(number) is not an Armstrong number")
    }
   
}
armstrong(153)
armstrong(146)
//: [Next](@next)
