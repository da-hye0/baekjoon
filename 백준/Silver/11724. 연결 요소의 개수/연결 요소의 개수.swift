import Foundation

let inputs = readLine()!.split(separator: " ").map { Int($0)! }
let N = inputs[0]
let M = inputs[1]

var result = 0
var graph = Array(repeating: [Int](), count: N + 1)
var visited = Array(repeating: false, count: N + 1)

for _ in 0..<M {
    let edge = readLine()!.split(separator: " ").map { Int($0)! }
    let u = edge[0]
    let v = edge[1]
    graph[u].append(v)
    graph[v].append(u)
}

func dfs(_ node: Int) {
    visited[node] = true
    
    for neighbor in graph[node] {
        if !visited[neighbor] {
            dfs(neighbor)
        }
    }
}

for i in 1...N {
    if !visited[i] {
        result += 1
        dfs(i)
    }
}

print(result)