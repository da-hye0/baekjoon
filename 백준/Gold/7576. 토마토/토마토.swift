import Foundation

let inputs = readLine()!.split(separator: " ").map { Int($0)! }
let M = inputs[0]
let N = inputs[1]

var grid = [[Int]]()
var queue = [(Int, Int)]()

for i in 0..<N {
    let row = readLine()!.split(separator: " ").map { Int($0)! }
    grid.append(row)
    for j in 0..<M {
        if row[j] == 1 {
            queue.append((i, j))
        }
    }
}

let dx = [-1, 1, 0, 0]
let dy = [0, 0, -1, 1]

var index = 0
while index < queue.count {
    let (cx, cy) = queue[index]
    index += 1
    
    for i in 0..<4 {
        let nx = cx + dx[i]
        let ny = cy + dy[i]
        
        if nx >= 0 && nx < N && ny >= 0 && ny < M {
            if grid[nx][ny] == 0 {
                grid[nx][ny] = grid[cx][cy] + 1
                queue.append((nx, ny))
            }
        }
    }
}

var maxDay = 0
for i in 0..<N {
    for j in 0..<M {
        if grid[i][j] == 0 {
            print("-1")
            exit(0)
        }
        maxDay = max(maxDay, grid[i][j])
    }
}

if maxDay == 0 {
    print("-1")
} else {
    print(maxDay - 1)
}