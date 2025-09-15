
import Foundation

func solve() {
    let N = Int(readLine()!)!
    var numbers = readLine()!.map { Int(String($0))! }
    _ = readLine()!
    
    var mineCount = 0
    

    for i in 0..<N {

        var canPlaceMine = true

        if i > 0 && numbers[i-1] == 0 {
            canPlaceMine = false
        }
   
        if numbers[i] == 0 {
            canPlaceMine = false
        }

        if i < N - 1 && numbers[i+1] == 0 {
            canPlaceMine = false
        }
    
        if canPlaceMine {
            mineCount += 1
            
            if i > 0 {
                numbers[i-1] -= 1
            }
            numbers[i] -= 1
            if i < N - 1 {
                numbers[i+1] -= 1
            }
        }
    }
    
    print(mineCount)
}

let T = Int(readLine()!)!
for _ in 0..<T {
    solve()
}
