import Foundation

func solve() {
    
    let qNum = Int(readLine()!)!
    
    for i in 0..<qNum {
        let n = Int(readLine()!)!
        let nums = readLine()!.split(separator: " ").map{Int($0)!}
        
        var graph = [0] + nums
        var visited = Array(repeating: false, count: n + 1)
        var cycleCount = 0
        
        func dfs(_ now: Int) {
            if !visited[now] {
                visited[now] = true
                dfs(graph[now])
            }
        }
        
        for i in 1...n {
            if !visited[i] {
                cycleCount += 1
                dfs(i)
            }
        }
        
        print(cycleCount)
    }
}

solve()