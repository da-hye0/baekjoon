import Foundation

var parent: [Int] = []

func find(_ i: Int) -> Int {
    if parent[i] == i {
        return i
    }
    parent[i] = find(parent[i])
    return parent[i]
}

func union(_ a: Int, _ b: Int) {
    let rootA = find(a)
    let rootB = find(b)

    if rootA != rootB {
        if rootA < rootB {
            parent[rootB] = rootA
        } else {
            parent[rootA] = rootB
        }
    }
}

struct Edge {
    let a: Int
    let b: Int
    let cost: Int
}

let N = Int(readLine()!)!
let M = Int(readLine()!)!

var edges: [Edge] = []

for _ in 0..<M {
    let line = readLine()!.split(separator: " ").map { Int(String($0))! }
    edges.append(Edge(a: line[0], b: line[1], cost: line[2]))
}

parent = Array(0...N)
edges.sort { $0.cost < $1.cost }

var totalCost = 0
var connectedEdges = 0

for edge in edges {
    if connectedEdges == N - 1 {
        break
    }
    
    if find(edge.a) != find(edge.b) {
        union(edge.a, edge.b)
        totalCost += edge.cost
        connectedEdges += 1
    }
}

print(totalCost)