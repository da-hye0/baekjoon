import Foundation

let line = readLine()?.split(separator: " ").map { Int($0)! }
let N = line![0]
let M = line![1]

var candidates = [[Int]]()
for k in 1...N {
    var candidate = Array(repeating: -1, count: N)
    for i in 0..<k {
        candidate[i] = 1
    }
    candidates.append(candidate)
}
for _ in 0..<M {
    guard let inputLine = readLine()?.split(separator: " ").map({ Int($0)! }) else { break }
    let a = inputLine
    
    var found = false
    
    for b in candidates {
        var sum = 0
        for i in 0..<N {
            sum += a[i] * b[i]
        }
        
        if sum == 0 {
            print(b.map { String($0) }.joined(separator: " "))
            found = true
            break
        }
    }
}