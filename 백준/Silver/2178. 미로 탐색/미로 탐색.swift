import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let M = input[1]

var maze = Array(repeating: Array(repeating: 0, count: M + 2), count: N + 2)

for i in 1...N {
    let line = readLine()!.map { Int(String($0))! }
    for j in 1...M {
        maze[i][j] = line[j-1]
    }
}

var dist = Array(repeating: Array(repeating: 0, count: M + 2), count: N + 2)

let dx = [0, 0, 1, -1]
let dy = [1, -1, 0, 0]

var queue = [(Int, Int)]()

queue.append((1, 1))
dist[1][1] = 1

func bfs() {
    
    var index = 0
    while index < queue.count {
            let (x, y) = queue[index]
            index += 1

            if x == N && y == M { break }
            
            for i in 0..<4 {
                let nx = x + dx[i]
                let ny = y + dy[i]
                
                if maze[nx][ny] == 1 && dist[nx][ny] == 0 {
                    dist[nx][ny] = dist[x][y] + 1
                    queue.append((nx, ny))
                }
            }
        }
}
bfs()
print(dist[N][M])