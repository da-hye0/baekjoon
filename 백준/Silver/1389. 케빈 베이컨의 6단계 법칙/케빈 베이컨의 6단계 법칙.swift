import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]

var graph = Array(repeating: [Int](), count: n + 1)
for _ in 0..<m {
    let rel = readLine()!.split(separator: " ").map { Int($0)! }
    let a = rel[0]
    let b = rel[1]

    graph[a].append(b)
    graph[b].append(a)
}

func getKevinBaconNumber(start: Int) -> Int {
    var distances = Array(repeating: -1, count: n + 1)
    var queue = [start]
    distances[start] = 0
    
    var index = 0
    while index < queue.count {
        let current = queue[index]
        index += 1
        
        for neighbor in graph[current] {
            if distances[neighbor] == -1 {
                distances[neighbor] = distances[current] + 1
                queue.append(neighbor)
            }
        }
    }
    return distances.filter { $0 > 0 }.reduce(0, +)
}

var minTotal = Int.max
var answer = 0

for i in 1...n {
    let score = getKevinBaconNumber(start: i)
    if score < minTotal {
        minTotal = score
        answer = i
    }
}

print(answer)