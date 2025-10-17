import Foundation
let T = Int(readLine()!)!
for _ in 0..<T {
    solve()
}
func solve() {
    let N = Int(readLine()!)!
    let logs = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
    var result = Array(repeating: 0, count: N)
    var left = 0
    var right = N - 1
    for i in 0..<N {
        if i % 2 == 0 {
            result[left] = logs[i]
            left += 1
        } else {
            result[right] = logs[i]
            right -= 1
        }
    }

    var maxDifficulty = 0

    for i in 0..<(N - 1) {
        let diff = abs(result[i] - result[i + 1])
        if diff > maxDifficulty {
            maxDifficulty = diff
        }
    }
    let wrapAroundDiff = abs(result[N - 1] - result[0])
    if wrapAroundDiff > maxDifficulty {
        maxDifficulty = wrapAroundDiff
    }
    print(maxDifficulty)
}
