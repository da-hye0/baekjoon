import Foundation

let N = Int(readLine()!)!
var queue: [Int] = []
for _ in 0..<N {
    let input = Int(readLine()!)!
    if input == 0 {
        queue.removeLast()
    } else {
        queue.append(input)
    }
}

print(queue.reduce(0, +))