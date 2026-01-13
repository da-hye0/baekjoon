import Foundation

let n = Int(readLine()!)!
let m = Int(readLine()!)!

var heavierGraph = Array(repeating: [Int](), count: n + 1)
var lighterGraph = Array(repeating: [Int](), count: n + 1)

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").compactMap { Int($0) }
    let u = input[0]
    let v = input[1]
    
    heavierGraph[u].append(v)
    lighterGraph[v].append(u)
}

func countConnectedNodes(start: Int, graph: [[Int]]) -> Int {
    var visited = Array(repeating: false, count: n + 1)
    var count = 0
    var stack = [start]
    visited[start] = true
    
    while !stack.isEmpty {
        let curr = stack.removeLast()
        
        for next in graph[curr] {
            if !visited[next] {
                visited[next] = true
                count += 1
                stack.append(next)
            }
        }
    }
    return count
}

for i in 1...n {
    let lightCount = countConnectedNodes(start: i, graph: heavierGraph)
    let heavyCount = countConnectedNodes(start: i, graph: lighterGraph)
    
    let unknownCount = (n - 1) - (lightCount + heavyCount)
    print(unknownCount)
}