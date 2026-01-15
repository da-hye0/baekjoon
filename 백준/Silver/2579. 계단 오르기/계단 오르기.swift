import Foundation

let n = Int(readLine()!)!
var scores = [0]

for _ in 0..<n {
    scores.append(Int(readLine()!)!)
}

var dp = Array(repeating: 0, count: n + 1)
if n >= 1 {
    dp[1] = scores[1]
}
if n >= 2 {
    dp[2] = scores[1] + scores[2]
}
if n >= 3 {
    for i in 3...n {
        dp[i] = max(dp[i-2] + scores[i], dp[i-3] + scores[i-1] + scores[i])
    }
}

print(dp[n])