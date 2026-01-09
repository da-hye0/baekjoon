import Foundation

let inputs = readLine()!.split(separator: " ").map { Int($0)! }
let M = inputs[0]
let N = inputs[1]
let K = inputs[2]

var rectangles: [[Int]] = []
var visited = Array(repeating: Array(repeating: false, count: M), count: N)
var grid = Array(repeating: Array(repeating: 0, count: M), count: N)
var results: [Int] = []

for _ in 0..<K {
    let xy = readLine()!.split(separator: " ").map { Int($0)! }
    let x1 = xy[0], y1 = xy[1]
    let x2 = xy[2], y2 = xy[3]

    for y in y1..<y2 {
        for x in x1..<x2 {
            grid[x][y] = 1
        }
    }
}

let dx = [0, 0, 1, -1]
let dy = [1, -1, 0, 0]

func bfs(_ startX: Int, _ startY: Int) -> Int {
    var count = 0
    var queue = [(startX, startY)]
    grid[startX][startY] = 1
    count += 1
    
    var index = 0
    while index < queue.count {
        let (cx, cy) = queue[index]
        index += 1
        
        for i in 0..<4 {
            let nx = cx + dx[i]
            let ny = cy + dy[i]
            
            if nx >= 0 && nx < N && ny >= 0 && ny < M {
                if grid[nx][ny] == 0 {
                    grid[nx][ny] = 1
                    queue.append((nx, ny))
                    count += 1
                }
            }
        }
    }
    
    return count
}

for y in 0..<M {
    for x in 0..<N {
        if grid[x][y] == 0 {
            results.append(bfs(x, y))
        }
    }
}

results.sort()
print(results.count)
print(results.map { String($0) }.joined(separator: " "))