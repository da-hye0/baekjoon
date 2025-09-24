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
        // Int64보다 값이 클 수 있어서 오버플로우는 건너뛰고 계산함.
        // "경우의 수는 231보다 작다."라는 문구가 명시되어 있음.
        // 결과적으로 계산중에 오버플로우를 허용하더라도 답은 Int값 안에 들어옴
        dp[j] = dp[j] &+ dp[j - coin]
    }
}

print(dp[k])