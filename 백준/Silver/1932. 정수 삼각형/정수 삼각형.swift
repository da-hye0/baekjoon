import Foundation

guard let nStr = readLine(), let n = Int(nStr) else { exit(0) }

var triangle = [[Int]]()
for _ in 0..<n {
    let row = readLine()!.split(separator: " ").map { Int($0)! }
    triangle.append(row)
}

var dp = [[Int]](repeating: [Int](repeating: 0, count: n), count: n)

for j in 0..<n {
    dp[n-1][j] = triangle[n-1][j]
}

if n > 1 {
    for i in (0...n-2).reversed() {
        for j in 0...i {
            dp[i][j] = triangle[i][j] + max(dp[i+1][j], dp[i+1][j+1])
        }
    }
}

print(dp[0][0])
