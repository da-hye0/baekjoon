let t = Int(readLine()!)!

let dx = [-1, 1, 0, 0]
let dy = [0, 0, -1, 1]

for _ in 0..<t {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let m = input[0], n = input[1], k = input[2]
    
    var field = Array(repeating: Array(repeating: 0, count: m), count: n)
    var visited = Array(repeating: Array(repeating: false, count: m), count: n)
    
    for _ in 0..<k {
        let pos = readLine()!.split(separator: " ").map { Int($0)! }
        field[pos[1]][pos[0]] = 1
    }
    
    func dfs(_ x: Int, _ y: Int) {
        visited[x][y] = true
        
        for i in 0..<4 {
            let nx = x + dx[i]
            let ny = y + dy[i]
            
            if nx >= 0 && nx < n && ny >= 0 && ny < m
                && field[nx][ny] == 1 && !visited[nx][ny] {
                dfs(nx, ny)
            }
        }
    }
    
    var count = 0
    
    for i in 0..<n {
        for j in 0..<m {
            if field[i][j] == 1 && !visited[i][j] {
                dfs(i, j)
                count += 1
            }
        }
    }
    
    print(count)
}
