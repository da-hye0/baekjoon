import Foundation

let s1 = Array(readLine()!)
let s2 = Array(readLine()!)
let s3 = Array(readLine()!)

var dp = Array(repeating:
             Array(repeating:
                    Array(repeating: 0, count: s3.count + 1),
                 count: s2.count + 1),
             count: s1.count + 1)

for i in 1...s1.count {
    for j in 1...s2.count {
        for k in 1...s3.count {
            if s1[i-1] == s2[j-1] && s2[j-1] == s3[k-1] {
                dp[i][j][k] = dp[i-1][j-1][k-1] + 1
            } else {
                dp[i][j][k] = max(dp[i-1][j][k], dp[i][j-1][k], dp[i][j][k-1])
            }
        }
    }
}

print(dp[s1.count][s2.count][s3.count])