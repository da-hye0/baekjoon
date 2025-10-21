import Foundation

let n = Int(readLine()!)!
var cows: [(arrival: Int, checkTime: Int)] = []

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let arrival = input[0]
    let checkTime = input[1]
    
    cows.append((arrival, checkTime))
}

cows.sort { $0.arrival < $1.arrival }

var currentTime = 0
for cow in cows {
    if currentTime < cow.arrival {
        currentTime = cow.arrival
    }
    currentTime += cow.checkTime
}

print(currentTime)
