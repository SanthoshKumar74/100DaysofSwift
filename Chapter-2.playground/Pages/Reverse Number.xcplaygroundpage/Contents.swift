//: [Previous](@previous)

import Foundation
func reverseNumber(_ num:Int){
    var lastDigit:Int
    var reverse = 0
    var temp = num
    
// Isolating the last digit and Concating the digit to the reverse variable.
// Removing the last digit to isoalte all the digits and reverse the number.
    
    while temp>0{
        lastDigit = temp % 10
        reverse = (reverse*10) + lastDigit
        temp = temp / 10
    }
    print("The reversed Number is \(reverse)")
}
reverseNumber(129)
//: [Next](@next)
