import Foundation
let n = Int(readLine()!)!
var result = 0
var ropes: [Int] = []

for _ in 0..<n {
    let rope = Int(readLine()!)!
    ropes.append(rope)
}
ropes.sort()
for i in 0..<ropes.count {
    result = max(result, ropes[i] * (ropes.count - i))
}

print(result)