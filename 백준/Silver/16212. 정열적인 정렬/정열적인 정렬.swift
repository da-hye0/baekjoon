import Foundation

let N = Int(readLine()!)!
var line = readLine()!.split(separator: " ").map { Int($0)! }
line.sort()
for i in 0..<N {
    print(line[i], terminator: " ")
}
