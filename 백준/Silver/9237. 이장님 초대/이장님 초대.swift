import Foundation
let n = Int(readLine()!)!
let trees = readLine()!.split(separator: " ").map { Int($0)! }.sorted(by: >)
var maxFinishDay = 0

for i in 0..<n {
    let plantingDay = i + 1
    let finishDay = plantingDay + trees[i]
    if finishDay > maxFinishDay {
        maxFinishDay = finishDay
    }
}

print(maxFinishDay + 1)