//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

DispatchQueue.global().async{
    sleep(5)
    print("inside")
}
print("outside")

//: [Next](@next)
