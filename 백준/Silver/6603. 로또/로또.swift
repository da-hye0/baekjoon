
import Foundation

func solve(k: Int, S: [Int]) {
    var combination: [Int] = []

    func findCombinations(startIndex: Int) {
        if combination.count == 6 {
            print(combination.map { String($0) }.joined(separator: " "))
            return
        }

        for i in startIndex..<k {
            if (k - i) < (6 - combination.count) {
                return
            }
            
            combination.append(S[i])
            findCombinations(startIndex: i + 1)
            combination.removeLast()
        }
    }
    findCombinations(startIndex: 0)
}

var isFirstCase = true
while true {
    guard let inputLine = readLine(), inputLine != "0" else { break }

    if !isFirstCase {
        print()
    }

    let input = inputLine.split(separator: " ").map { Int($0)! }
    let k = input[0]
    let S = Array(input.dropFirst())
    
    solve(k: k, S: S)
    
    isFirstCase = false
}
