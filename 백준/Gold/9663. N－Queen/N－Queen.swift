import Foundation

let n = Int(readLine()!)!
var count = 0

var checkCol = Array(repeating: false, count: n)         
var checkDiag1 = Array(repeating: false, count: 2 * n)  
var checkDiag2 = Array(repeating: false, count: 2 * n)  

func solve(row: Int) {
    if row == n {
        count += 1
        return
    }

    for col in 0..<n {
        if !checkCol[col] && !checkDiag1[row + col] && !checkDiag2[row - col + n] {
            
            checkCol[col] = true
            checkDiag1[row + col] = true
            checkDiag2[row - col + n] = true
            
            solve(row: row + 1)
            
            checkCol[col] = false
            checkDiag1[row + col] = false
            checkDiag2[row - col + n] = false
        }
    }
}

solve(row: 0)
print(count)