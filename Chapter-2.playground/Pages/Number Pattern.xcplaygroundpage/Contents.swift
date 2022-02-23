//: [Previous](@previous)

import Foundation


func numberPattern(_ noOfRows:Int)
{
    
// Loop for iterating through Rows
    
    for i in 1...noOfRows
    {

// Loop for printing number of spaces in each row (total number of rows - the current row

        for _ in 1..<noOfRows-i+1
        {
            print(" ",terminator:"")
        }
        var num = 1
        
//Print the numbers
        
        for _ in 1..<i+1{
            print("\(num)",terminator:"")
            num+=1
        }

        num = num - 2
        for _ in 1..<i{
            print(num,terminator:"")
            num = num - 1
        }
       print()
    }
}
numberPattern(6)

//: [Next](@next)
