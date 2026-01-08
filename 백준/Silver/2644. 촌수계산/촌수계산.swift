import Foundation

let n = Int(readLine()!)!
let targets = readLine()!.split(separator: " ").map { Int($0)! }
let startNode = targets[0]
let endNode = targets[1]
let m = Int(readLine()!)!

var graph = Array(repeating: [Int](), count: n + 1)
var visited = Array(repeating: false, count: n + 1)

for _ in 0..<m {
    let relation = readLine()!.split(separator: " ").map { Int($0)! }
    let parent = relation[0]
    let child = relation[1]
    
    graph[parent].append(child)
    graph[child].append(parent)
}

func dfs(current: Int, target: Int, distance: Int) -> Int {
    visited[current] = true
    
    if current == target {
        return distance
    }
    
    for nextNode in graph[current] {
        if !visited[nextNode] {
            let result = dfs(current: nextNode, target: target, distance: distance + 1)
            if result != -1 {
                return result
            }
        }
    }
    
    return -1
}

print(dfs(current: startNode, target: endNode, distance: 0))