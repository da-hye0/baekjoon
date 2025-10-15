import Foundation

let caseNum = Int(readLine()!)!
var array: [[String]] = []

for _ in 0..<caseNum {
    let input = readLine()!.split(separator: " ")
    let parts = input[1...].map { String($0) }
    array.append(parts)
}

array.sort { (leftArray, rightArray) -> Bool in
    return leftArray.lexicographicallyPrecedes(rightArray)
}
for i in 0..<array.count {
    let previousArray = (i == 0) ? [String]() : array[i - 1]

    var commonDepth = 0
    while commonDepth < array[i].count && commonDepth < previousArray.count {
        if array[i][commonDepth] != previousArray[commonDepth] {
            break
        }
        commonDepth += 1
    }
    
    for j in commonDepth..<array[i].count {
        let prefix = String(repeating: "--", count: j)
        j==0 ? print("\(array[i][j])") : print("\(prefix)\(array[i][j])")
    }
}