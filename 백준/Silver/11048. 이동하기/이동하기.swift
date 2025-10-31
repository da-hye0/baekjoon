import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let M = input[1]

var candy: [[Int]] = []
var dp = Array(repeating:
                Array(repeating: 0, count: M+1)
                , count: N+1)

for _ in 0..<N {
    let row = readLine()!.split(separator: " ").map { Int($0)! }
    candy.append(row)
}

for i in 1...N {
    for j in 1...M {
        dp[i][j] = max(dp[i-1][j], dp[i][j-1], dp[i-1][j-1]) + candy[i-1][j-1]
    }
}
print(dp[N][M])