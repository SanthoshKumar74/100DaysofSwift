//: [Previous](@previous)

import Foundation
func sumOfDigits(_ number:Int){
    var n = number
    var temp: Int
    var sum = 0
    
// Isolating the last Digit.
// Continously adding and updating the digits.
    
    while n>0{
        temp = n%10
        sum+=temp
        n = n/10
    }
    print("Sum of Digits of \(number) is \(sum)")
}
sumOfDigits(549)
//: [Next](@next)
