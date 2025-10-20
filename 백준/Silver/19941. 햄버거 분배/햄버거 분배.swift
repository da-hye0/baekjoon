import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let K = input[1]

var table = Array(readLine()!)
var ate = Array(repeating: false, count: N)
var count = 0
for i in 0..<N {
    if table[i] == "P" {
        let startIndex = max(0, i - K)
        let endIndex = min(N - 1, i + K)

        for j in startIndex...endIndex {
            if table[j] == "H" && !ate[j] {
                ate[j] = true
                count += 1
                break
            }
        }
    }
}

print(count)