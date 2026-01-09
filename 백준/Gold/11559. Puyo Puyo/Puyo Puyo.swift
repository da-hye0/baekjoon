import Foundation

var grid = [[Character]]()
let N = 12, M = 6
var visited = Array(repeating: Array(repeating: false, count: 6), count: 12)

let dx = [-1, 1, 0, 0]
let dy = [0, 0, -1, 1]

for _ in 0..<N {
    grid.append(Array(readLine()!))
}

func find(_ startX: Int, _ startY: Int, _ color: Character) -> Bool {
    var queue = [(startX, startY)]
    var path = [(startX, startY)]
    visited[startX][startY] = true
    
    var head = 0
    while head < queue.count {
        let (cx, cy) = queue[head]
        head += 1
        
        for i in 0..<4 {
            let nx = cx + dx[i]
            let ny = cy + dy[i]
            
            if nx >= 0 && nx < N && ny >= 0 && ny < M {
                if !visited[nx][ny] && grid[nx][ny] == color {
                    visited[nx][ny] = true
                    queue.append((nx, ny))
                    path.append((nx, ny))
                }
            }
        }
    }
    
    if path.count >= 4 {
        for (px, py) in path {
            grid[px][py] = "."
        }
        return true
    }
    return false
}

func applyGravity() {
    for j in 0..<M {
        var columnPuyos = [Character]()
        for i in stride(from: N-1, through: 0, by: -1) {
            if grid[i][j] != "." {
                columnPuyos.append(grid[i][j])
            }
        }
        for i in stride(from: N-1, through: 0, by: -1) {
            let puyoIdx = (N-1) - i
            if puyoIdx < columnPuyos.count {
                grid[i][j] = columnPuyos[puyoIdx]
            } else {
                grid[i][j] = "."
            }
        }
    }
}
var combo = 0

while true {
    var isAnyGroupExploded = false
    visited = Array(repeating: Array(repeating: false, count: M), count: N)
    
    for i in 0..<N {
        for j in 0..<M {
            if grid[i][j] != "." && !visited[i][j] {
                if find(i, j, grid[i][j]) {
                    isAnyGroupExploded = true
                }
            }
        }
    }
    
    if isAnyGroupExploded {
        combo += 1
        applyGravity()
    } else {
        break
    }
}

print(combo)