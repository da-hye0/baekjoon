import Foundation

let caseNum = Int(readLine()!)!
var dance: Set = ["ChongChong"]

var flag = 0

for i in 0..<caseNum {
    let input = readLine()!.split(separator: " ")
    if dance.contains(String(input[0])) || dance.contains(String(input[1])){
        dance.insert(String(input[0]))
        dance.insert(String(input[1]))
    }
}

print(dance.count)