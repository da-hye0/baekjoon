import Foundation

let line = readLine()!.split(separator: " ").map { Int($0)! }
let M = line[0]
let N = line[1]

var map = [[Int]]()
for _ in 0..<M {
    map.append(readLine()!.split(separator: " ").map { Int($0)! })
}

var dp = Array(repeating: Array(repeating: -1, count: N), count: M)

let dx = [1, -1, 0, 0]
let dy = [0, 0, 1, -1]

func dfs(_ y: Int, _ x: Int) -> Int {
    if y == M - 1 && x == N - 1 {
        return 1
    }

    if dp[y][x] != -1 {
        return dp[y][x]
    }
    
    dp[y][x] = 0
    
    for i in 0..<4 {
        let ny = y + dy[i]
        let nx = x + dx[i]
        
        if ny >= 0 && ny < M && nx >= 0 && nx < N {
            if map[ny][nx] < map[y][x] {
                dp[y][x] += dfs(ny, nx)
            }
        }
    }
    
    return dp[y][x]
}
print(dfs(0, 0))