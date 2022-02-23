//: [Previous](@previous)

import Foundation
func matrixMultiply(_ mat1:[[Int]], _ mat2:[[Int]]) -> [[Int]]
{
    
// Initialising a zero  result matrix
    
    var result : [[Int]] = [[0,0,0],[0,0,0],[0,0,0]]
  
// Looping Through each row of matrix 1

    for i in 0...mat1.count-1
    {
        
//Looping through each column of matrix 2
        
        for j in 0...mat2[i].count - 1
        {
        
//Updating the result matrix.
            
            for k in 0...mat2.count - 1
            {
                result[i][j] += mat1[i][k] * mat2[k][j]
            }
        }
    }
    return result
}

let mat1 = [[1,2,3],
            [4,5,6],
            [7,8,9]]
let mat2 = [[4,2,3],
            [4,5,6],
            [7,8,7]]
let result = matrixMultiply(mat1,mat2)
print(result)
//: [Next](@next)
