import Foundation

let n = Int(readLine()!)!

var minSum = Int.max
var maxSum = Int.min
var minDiff = Int.max
var maxDiff = Int.min

for _ in 0..<n {

    let T = readLine()!.split(separator: " ").map { Int($0)! }
    let (x, y) = (T[0], T[1])
    
    let s = x + y
    let d = x - y
     
    minSum = min(minSum, s)
    maxSum = max(maxSum, s)

    minDiff = min(minDiff, d)
    maxDiff = max(maxDiff, d)
}

let result = max(maxSum - minSum, maxDiff - minDiff)
print(result)