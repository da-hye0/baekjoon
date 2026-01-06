import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]

var visited = Array(repeating: false, count: n + 1)
var s = [Int]()

func solve() {
    if s.count == m {
        print(s.map { String($0) }.joined(separator: " "))
        return
    }
    
    for i in 1...n {
        if !visited[i] {
            visited[i] = true
            s.append(i)
            solve()
            s.removeLast()
            visited[i] = false
        }
    }
}

solve()