import Foundation

var problems: [(Int, Int)] = []

for i in 1...8 {
    let score = Int(readLine()!)!
    problems.append((i, score))
}

problems.sort { $0.1 > $1.1 }

let top5 = problems.prefix(5)
let totalScore = top5.map { $0.1 }.reduce(0, +)
print(totalScore)

let problemNumbers = top5.map { $0.0 }.sorted()
let resultString = problemNumbers.map { String($0) }.joined(separator: " ")
print(resultString)