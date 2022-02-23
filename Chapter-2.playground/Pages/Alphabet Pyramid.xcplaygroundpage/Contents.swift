//: [Previous](@previous)

import Foundation
func numberPattern(_ noOfRows:Int)
{
//Loop for Number of Rows.
    
    for i in 1...noOfRows
    {
        for _ in 1..<noOfRows-i+1
        {
            print(" ",terminator:"")
        }
        
//Storint the ascii value of A so value can be incrementer

        var ascii = 65
        for _ in 1..<i+1
        {

// Change the ascii value into a character
            
            print(Character(UnicodeScalar(ascii)!),terminator:"")
            ascii+=1
        }
        
        ascii = ascii - 2
        for _ in 1..<i
                
        {
            print(Character(UnicodeScalar(ascii)!),terminator:"")
            ascii = ascii - 1
        }
       print()
    }
}
numberPattern(6)

//: [Next](@next)
