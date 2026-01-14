import Foundation

let line = readLine()!.split(separator: " ").map { Int($0)! }
let N = line[0]
let M = line[1]

var arr = Array(repeating: [Int](), count: N + 1)
var inDegree = Array(repeating: 0, count: N + 1)

for _ in 0..<M {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    arr[input[0]].append(input[1])
    inDegree[input[1]] += 1
}

var queue = [Int]()
for i in 1...N {
    if inDegree[i] == 0 {
        queue.append(i)
    }
}

var result = [Int]()
var head = 0

while head < queue.count {
    let current = queue[head]
    head += 1
    result.append(current)

    for next in arr[current] {
        inDegree[next] -= 1
        if inDegree[next] == 0 {
            queue.append(next)
        }
    }
}

print(result.map { String($0) }.joined(separator: " "))