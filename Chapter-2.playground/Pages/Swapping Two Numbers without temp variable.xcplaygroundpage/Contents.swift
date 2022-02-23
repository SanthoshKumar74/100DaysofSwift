//: [Previous](@previous)

import Foundation
// Using inout to alter the value of passed parameter.

func swap(_ n1: inout Int,_ n2: inout Int){
    print("n1 = \(n1) and n2 = \(n2)")
    n1 = n1*n2
    n2 = n1/n2
    n1 = n1/n2
    print("After swapping n1 = \(n1) and n2 = \(n2)")
}
var n1 = 5, n2 = 4
swap(&n1,&n2) // Should pass the reference of variable
//: [Next](@next)
