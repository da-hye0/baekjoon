import Foundation

let nk = readLine()!.split(separator: " ").map { Int($0)! }
let N = nk[0]
let K = nk[1]
let A = readLine()!.split(separator: " ").map { Int($0)! }

let minInf = -1_000_000_000
var dp = Array(repeating: Array(repeating: minInf, count: K + 1), count: N)

for i in 0..<N {
    dp[i][1] = A[i]
}

for k in 2...K {
    var maxPrev = minInf
    for i in (k - 1)..<N {
        maxPrev = max(maxPrev, dp[i - 1][k - 1])
        if maxPrev != minInf {
            dp[i][k] = maxPrev + (A[i] - (k - 1))
        }
    }
}

var result = minInf
for i in (K - 1)..<N {
    result = max(result, dp[i][K])
}

print(result)