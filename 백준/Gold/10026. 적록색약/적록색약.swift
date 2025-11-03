import Foundation

func dfs(_ grid: [[Character]], _ visited: inout [[Bool]], _ x: Int, _ y: Int, _ target: Character) {
    if x < 0 || x >= grid.count || y < 0 || y >= grid[0].count ||
       visited[x][y] || grid[x][y] != target {
        return
    }
    
    visited[x][y] = true
    
    dfs(grid, &visited, x-1, y, target)
    dfs(grid, &visited, x+1, y, target)
    dfs(grid, &visited, x, y-1, target)
    dfs(grid, &visited, x, y+1, target)
}

func countRegions(_ grid: [[Character]]) -> Int {
    let n = grid.count
    var visited = Array(repeating: Array(repeating: false, count: n), count: n)
    var count = 0
    
    for i in 0..<n {
        for j in 0..<n {
            if !visited[i][j] {
                dfs(grid, &visited, i, j, grid[i][j])
                count += 1
            }
        }
    }
    
    return count
}

let n = Int(readLine()!)!
var grid: [[Character]] = []

for _ in 0..<n {
    let line = Array(readLine()!)
    grid.append(line)
}

let normal = countRegions(grid)

var colorBlindGrid = grid
for i in 0..<n {
    for j in 0..<n {
        if colorBlindGrid[i][j] == "R" {
            colorBlindGrid[i][j] = "G"
        }
    }
}

let colorBlind = countRegions(colorBlindGrid)
print(normal, colorBlind)
