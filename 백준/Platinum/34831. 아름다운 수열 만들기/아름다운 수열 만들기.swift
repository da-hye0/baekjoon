import Foundation

func solve() {
    guard let input = readLine(), let n = Int(input) else { return }

    if n == 3 {
        print("No")
        return
    }

    var result = [Int](repeating: 0, count: n)
    var sumDiff = [0, 0, 0]

    result[0] = 0
    result[1] = 1
    sumDiff[0] += 1
    sumDiff[1] += 1

    for i in 2..<n {
        var bestNext = -1
        var minMaxSum = Int.max
        
      
        for next in 0...2 {
            if result[i-1] == next { continue }
            
            var tempSum = sumDiff
            let diff = abs(result[i-1] - next)
            tempSum[result[i-1]] += diff
            tempSum[next] += diff
            
            let currentMax = tempSum.max()!
            let currentMin = tempSum.min()!
            let score = currentMax - currentMin
            
            if score < minMaxSum {
                minMaxSum = score
                bestNext = next
            }
        }
        
        let diff = abs(result[i-1] - bestNext)
        sumDiff[result[i-1]] += diff
        sumDiff[bestNext] += diff
        result[i] = bestNext
    }

    if sumDiff[0] == sumDiff[1] && sumDiff[1] == sumDiff[2] {
        print("Yes")
        print(result.map { String($0) }.joined(separator: " "))
    } else {
        print("No")
    }
}

solve()
