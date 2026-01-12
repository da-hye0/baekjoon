import Foundation

func solution() {
    let inputs = readLine()!.split(separator: " ").map { Int($0)! }
    let A = inputs[0]
    let P = inputs[1]
    
    var visited = [Int: Int]()
    
    var current = A
    var order = 0
    
    while true {
        if let firstOrder = visited[current] {
            print(firstOrder)
            break
        }

        visited[current] = order

        current = getNextNumber(current, P)
        order += 1
    }
}

func getNextNumber(_ n: Int, _ p: Int) -> Int {
    var sum = 0
        var num = n
        
        while num > 0 {
            let digit = num % 10
            var result = 1
            for _ in 0..<p { result *= digit }
            sum += result
            num /= 10
        }
        return sum
}

solution()