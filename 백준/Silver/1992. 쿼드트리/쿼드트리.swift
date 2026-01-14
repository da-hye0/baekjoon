import Foundation

let n = Int(readLine()!)!
var matrix = [[Character]]()

for _ in 0..<n {
    let row = Array(readLine()!)
    matrix.append(row)
}

func compress(x: Int, y: Int, size: Int) -> String {
    let firstChar = matrix[x][y]
    var isSame = true
    
    for i in x..<x + size {
        for j in y..<y + size {
            if matrix[i][j] != firstChar {
                isSame = false
                break
            }
        }
        if !isSame { break }
    }
    
    if isSame {
        return String(firstChar)
    }
    
    let nextSize = size / 2
    let p1 = compress(x: x, y: y, size: nextSize)
    let p2 = compress(x: x, y: y + nextSize, size: nextSize)
    let p3 = compress(x: x + nextSize, y: y, size: nextSize)
    let p4 = compress(x: x + nextSize, y: y + nextSize, size: nextSize)
    
    return "(\(p1)\(p2)\(p3)\(p4))"
}

print(compress(x: 0, y: 0, size: n))