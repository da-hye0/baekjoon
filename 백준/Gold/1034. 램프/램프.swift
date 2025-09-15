import Foundation

let NM = readLine()!.split(separator: " ").map { Int($0)! }
let N = NM[0]

var table: [String] = []
for _ in 0..<N {
    table.append(readLine()!)
}

let K = Int(readLine()!)!

var rowCounts: [String: Int] = [:]
for rowPattern in table {
    rowCounts[rowPattern, default: 0] += 1
}

var maxLitRows = 0

for (pattern, count) in rowCounts {
    
    let zeros = pattern.filter { $0 == "0" }.count
    if zeros <= K && (K - zeros) % 2 == 0 {
        maxLitRows = max(maxLitRows, count)
    }
}

print(maxLitRows)
