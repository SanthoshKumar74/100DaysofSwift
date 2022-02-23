//: [Previous](@previous)

import Foundation

func prime(_ n:Int)
{
//flag variable to determine whether a divisior for the number has been found or not.
    
    var flag = 0
    if (n == 2 || n == 3)
    {
        print("\(n) is a Prime Number")
    }
    else
    {
    for num in 2...n/2{
        if n%num == 0{
            print("\(n) is not a prime Number")
            
// Updating the flag variable when the number is divisible.
            
            flag = 1
            break
        }
    }
        
    if flag == 0{
        print("\(n) is a prime Number")
    }
    }
}
prime(111)



//: [Next](@next)
