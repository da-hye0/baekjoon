import Foundation

let n = Int(readLine()!)!
var t = [Int](repeating: 0, count: n + 1)
var p = [Int](repeating: 0, count: n + 1)

for i in 1...n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    t[i] = input[0]
    p[i] = input[1]
}

var dp = [Int](repeating: 0, count: n + 2)

for i in stride(from: n, through: 1, by: -1) {
    let nextDay = i + t[i]
    
    if nextDay <= n + 1 {
        dp[i] = max(dp[i + 1], p[i] + dp[nextDay])
    } else {
        dp[i] = dp[i + 1]
    }
}

print(dp[1])