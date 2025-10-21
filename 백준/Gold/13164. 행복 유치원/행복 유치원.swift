import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let K = input[1]
var height = readLine()!.split(separator: " ").map { Int($0)! }
var distance: [Int] = []

for i in 0..<height.count - 1 {
    distance.append(height[i + 1] - height[i])
}

distance.sort()
if K > 1 {
    for _ in 0..<(K - 1) {
        distance.removeLast()
    }
}
print(distance.reduce(0, +))