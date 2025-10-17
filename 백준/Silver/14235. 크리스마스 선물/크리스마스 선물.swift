import Foundation

let n = Int(readLine()!)!
var arr: [Int] = []

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    if input[0] == 0 {
        if arr.isEmpty {
            print("-1")
        } else {
            print(arr.last!)
            arr.removeLast()
        }
    } else {
        for i in 1...input[0] {
            arr.append(input[i])
        }
        arr.sort()
    }
}
