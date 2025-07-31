import Foundation

let num = Int(readLine()!)
var array = readLine()!.split(separator: " ").map { Int($0)! }
array.sort()

var totalSum = 0
var currentWait = 0

for time in array {
    currentWait += time
    totalSum += currentWait
}

print(totalSum)