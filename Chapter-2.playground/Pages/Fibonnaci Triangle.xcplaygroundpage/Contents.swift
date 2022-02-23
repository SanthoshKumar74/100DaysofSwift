//: [Previous](@previous)

import Foundation
func fibbonnaciTriangle(_ noOfRows:Int){
    var n3 = 0
    
//Loop Thorough the Rows
    
    for i in 1...noOfRows
    {
        var n1 = 0, n2 = 1
        print(n2,terminator:"\t")
 
//Printing the fibonnacii sequece upto the nth row number of terms.
        for _ in 1..<i
        {
             n3 = n1 + n2
            print(n3,terminator:"\t")
            n1 = n2
            n2 = n3
        }
        print("\t")
    }
}
fibbonnaciTriangle(10)
//: [Next](@next)
