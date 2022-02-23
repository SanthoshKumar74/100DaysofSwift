//: [Previous](@previous)

import Foundation
func decimalToBinary(_ number:Int) -> Int{
    var num = number
    var lastDigit = 0
    var binary: [Int] = []
    
// Diving each digit by 2 and finding the remainder and appending the remainder to the binary array.
    
    while num>0
    {
    lastDigit = num % 2
    binary.append(lastDigit)
    num = num / 2
    }
    
//Converting the elements of binary array into an single integer.
    
    return binary.reduce(0){return $0*10 + $1}
}
print(decimalToBinary(345))
//: [Next](@next)
