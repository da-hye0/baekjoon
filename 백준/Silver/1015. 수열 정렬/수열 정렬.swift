import Foundation

let n = Int(readLine()!)!
let line = readLine()!.split(separator: " ")

var nums: [(Int, Int)] = []
for (index, valueString) in line.enumerated() {
    nums.append((index, Int(valueString)!))
}
nums.sort {
    if $0.1 == $1.1 {
        return $0.0 < $1.0
    }
    return $0.1 < $1.1
}

var p = Array(repeating: 0, count: n)

for (newIndex, element) in nums.enumerated() {
    let originalIndex = element.0
    
    p[originalIndex] = newIndex
}

let resultString = p.map { String($0) }.joined(separator: " ")
print(resultString)
