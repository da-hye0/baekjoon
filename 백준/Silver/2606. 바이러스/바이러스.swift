import Foundation

let N = Int(readLine()!)!
let M = Int(readLine()!)!

var graph = Array(repeating: [Int](), count: N + 1)

for _ in 0..<M {
    let edge = readLine()!.split(separator: " ").map { Int($0)! }
    let a = edge[0]
    let b = edge[1]
    
    graph[a].append(b)
    graph[b].append(a)
}

var visited = Array(repeating: false, count: N + 1)
var infectedCount = 0

func dfs(node: Int) {
    visited[node] = true
    for nextNode in graph[node] {
        if !visited[nextNode] {
            infectedCount += 1
            dfs(node: nextNode)
        }
    }
}

dfs(node: 1)
var queue = [1]
visited[1] = true

while !queue.isEmpty {
    let currentNode = queue.removeFirst()
    for nextNode in graph[currentNode] {
        if !visited[nextNode] {
            visited[nextNode] = true
            infectedCount += 1
            queue.append(nextNode)
        }
    }
}

print(infectedCount)