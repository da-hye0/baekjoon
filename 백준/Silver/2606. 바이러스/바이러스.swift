import Foundation

let N = Int(readLine()!)!
let M = Int(readLine()!)!

var graph = Array(repeating: [Int](), count: N + 1)
for _ in 0..<M {
    let edge = readLine()!.split(separator: " ").map { Int($0)! }
    graph[edge[0]].append(edge[1])
    graph[edge[1]].append(edge[0])
}

var visited = Array(repeating: false, count: N + 1)
var infectedCount = 0
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