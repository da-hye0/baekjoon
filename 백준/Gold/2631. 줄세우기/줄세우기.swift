import Foundation

let N = Int(readLine()!)!
var arr: [Int] = []
var dp = Array(repeating: 1, count: N)
for _ in 0..<N {
    arr.append(Int(readLine()!)!)
}

for i in 1..<N {
    for j in 0..<i {
        if arr[j] < arr[i] {
            dp[i] = max(dp[i], dp[j]+1)
        }
    }
}

if let lisLength = dp.max() {
    print(N - lisLength)
} else {
    print(0)
}
