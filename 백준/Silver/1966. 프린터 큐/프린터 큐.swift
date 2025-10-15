import Foundation
let caseNum = Int(readLine()!)!

for _ in 0..<caseNum {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    _ = input[0]
    var target = input[1]
    var arr: [Int] = []
    var popNumber = 0
    
    let nums = readLine()!.split(separator: " ").map { Int($0)! }
    for num in nums {
        arr.append(num)
    }
    
    while !arr.isEmpty{
        if arr.first == arr.max() {
            arr.removeFirst()
            popNumber += 1
            if target == 0 {
                break
            }
            target = target - 1
        } else {
            arr.append(arr.first!)
            arr.removeFirst()
            if target == 0 {
                target = arr.count - 1
            } else {
                target = target - 1
            }
        }
    }
    
    print(popNumber)
}