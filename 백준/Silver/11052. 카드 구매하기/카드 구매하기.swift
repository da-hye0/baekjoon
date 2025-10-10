import Foundation

let N = Int(readLine()!)!
var Pi: [Int] = readLine()!.split(separator: " ").map { Int($0)! }
var dp = Array(repeating: 0, count: N+1)

for i in 1...N {
    var maxPrice = 0
    for j in 1...i {
        maxPrice = max(maxPrice, dp[i - j] + Pi[j - 1])
    }
    dp[i] = maxPrice
}

print(dp.last!)