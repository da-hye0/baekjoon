import Foundation

let N = Int(readLine()!)!
var arr: [Int] = []
for _ in 0..<N {
    let num = Int(readLine()!)!
    arr.append(num)
}
let numbers = [1, 2, 3]
var dp = Array(repeating: 0, count: arr.max()! + 1)
dp[0] = 1

for number in numbers {
    for target in number...arr.max()! {
        dp[target] += dp[target - number]
    }
}

for num in arr {
    print(dp[num])
}