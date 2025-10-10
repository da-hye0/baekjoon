import Foundation

let N = Int(readLine()!)!
let Ai = Array(readLine()!.split(separator: " ").map { Int($0)! }.reversed())
var dp = Array(repeating: 1, count: N)

for i in 0..<N {
    for j in 0..<i {
        if Ai[j] < Ai[i] {
            dp[i] = max(dp[i], dp[j] + 1)
        }
    }
}

print(dp.max()!)