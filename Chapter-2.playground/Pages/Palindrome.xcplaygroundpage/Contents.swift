//: [Previous](@previous)

import Foundation
func palindrome(_ num:Int){
    var lastDigit:Int
    var reverse = 0
    var temp = num
    
// Isolating the last digit and Concating the digit to the reverse variable.
    
    while temp>0{
        lastDigit = temp % 10
        reverse = (reverse*10) + lastDigit
        
// removing the last digit from the number
        
        temp = temp / 10
    }
    
//Checking if the reversednumber and given number are same.
    
    if num == reverse{
        print("\(num) is a Palindrome")
        
    }else{
        print("\(num) is not Palindrome")
    }
}
palindrome(14141)
//: [Next](@next)
