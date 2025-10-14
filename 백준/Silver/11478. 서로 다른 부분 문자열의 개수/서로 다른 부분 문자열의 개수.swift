import Foundation

let S = Array(readLine()!)
var resultSet = Set<String>()

for i in 0..<S.count {
    var currentSubstring = ""
    for j in i..<S.count {
        currentSubstring += String(S[j])
        resultSet.insert(currentSubstring)
    }
}

print(resultSet.count)
