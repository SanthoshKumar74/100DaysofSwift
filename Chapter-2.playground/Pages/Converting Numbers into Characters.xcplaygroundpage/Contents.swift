//: [Previous](@previous)

import Foundation
func numbersToString(_ number:Int)-> String{
var stringOfNumber = ""
var num = number
var lastDigit:Int, reversed = 0
    
//Reversing the number
    
    while num > 0{
        lastDigit = num % 10
        reversed = (reversed*10) + lastDigit
        num = num / 10
    }
num = reversed
   while num > 0
    {
       
//Isolating the last Digit of the reversed number.
       
       lastDigit = num % 10
       
// Checking the lastDigit against the cases
       
       switch lastDigit{
       case 0:
           stringOfNumber += "Zero "
           break
       case 1:
           stringOfNumber += "One "
           break
       case 2:
           stringOfNumber += "Two "
           break
       case 3:
           stringOfNumber += "Three "
           break
       case 4:
           stringOfNumber += "Four "
           break
       case 5:
           stringOfNumber += "Five "
           break
       case 6:
           stringOfNumber += "Six "
           break
       case 7:
           stringOfNumber += "Seven "
           break
       case 8:
           stringOfNumber += "Eight "
           break
       default:
           stringOfNumber += "Nine "
           break
       }
// Removing the last Digit from the reversed number
       
    num = num / 10

     }
    return stringOfNumber
}
print(numbersToString(8946017803))
//: [Next](@next)
