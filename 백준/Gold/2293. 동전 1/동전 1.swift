import Foundation

let nk = readLine()!.split(separator: " ").map { Int($0)! }
let (n, k) = (nk[0], nk[1])

var coins: [Int] = []
for _ in 0..<n {
    coins.append(Int(readLine()!)!)
}

var dp = [Int](repeating: 0, count: k + 1)
dp[0] = 1

for coin in coins {
    if coin > k { continue }
    for j in coin...k {
        dp[j] = dp[j] &+ dp[j - coin]
    }
}

print(dp[k])