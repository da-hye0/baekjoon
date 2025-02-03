import Foundation

let caseNum = Int(readLine()!)!
for _ in 0..<caseNum {
    var arr = readLine()!.split(separator: " ").map{Int($0)!}
    print(arr[0] < arr[1] ? "NO BRAINS" : "MMM BRAINS")
}