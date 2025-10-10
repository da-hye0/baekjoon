import Foundation

let N = Int(readLine()!)!
var Pi: [Int] = readLine()!.split(separator: " ").map { Int($0)! }
var dp = Array(repeating: 0, count: N+1)

for i in 1...N {
    var minPrice = Int.max
    for j in 1...i {
        minPrice = min(minPrice, dp[i - j] + Pi[j - 1])
    }
    dp[i] = minPrice
}

print(dp.last!)
