import Foundation

let n = Int(readLine()!)!
var points = [(Int, Int)]()

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    points.append((input[0], input[1]))
}

points.sort {
    if $0.0 != $1.0 {
        return $0.0 < $1.0
    }
    return $0.1 < $1.1
}

var result = ""
for p in points {
    result += "\(p.0) \(p.1)\n"
}
print(result)