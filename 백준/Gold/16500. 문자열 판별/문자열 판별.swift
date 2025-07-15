import Foundation

let S = readLine()!
let N = Int(readLine()!)!
var A: [String] = []
for _ in 0..<N {
    A.append(readLine()!)
}

let sArray = Array(S)
var dp = Array(repeating: false, count: S.count + 1)
dp[0] = true

for i in 0..<S.count {
    if dp[i] {
        for word in A {
            let wordLength = word.count
            if i + wordLength <= S.count {
                if String(sArray[i..<(i + wordLength)]) == word {
                    dp[i + wordLength] = true
                }
            }
        }
    }
}

print(dp[S.count] ? 1 : 0)