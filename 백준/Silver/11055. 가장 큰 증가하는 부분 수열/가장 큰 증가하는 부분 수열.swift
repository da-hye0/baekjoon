import Foundation

let N = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map { Int($0)! }
var dp = input

for i in 1..<N {
    for j in 0..<i {
        if input[j] < input[i] {
            dp[i] = max(dp[i], dp[j] + input[i])
        }
    }
}

print(dp.max() ?? 0)