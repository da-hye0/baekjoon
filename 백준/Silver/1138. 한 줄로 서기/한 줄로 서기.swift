import Foundation

let N = Int(readLine()!)!
let rules = readLine()!.split(separator: " ").map { Int($0)! }
var result = Array(repeating: 0, count: N)

for i in 1...N {
    let leftTallerCount = rules[i - 1]
    var emptySpotCounter = 0
    for j in 0..<N {
        if result[j] == 0 && emptySpotCounter == leftTallerCount {
            result[j] = i
            break
        }
        if result[j] == 0 {
            emptySpotCounter += 1
        }
    }
}

print(result.map { String($0) }.joined(separator: " "))
