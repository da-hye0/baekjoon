import Foundation

let N = Int(readLine()!)!
var arr: [String] = []

for _ in 0..<N {
    let line = readLine()!
    arr.append(line)
}

arr.sort()
var eliminatedCount = 0
for i in 0..<N-1 {
    if arr[i+1].hasPrefix(arr[i]) {
        eliminatedCount += 1
    }
}

print(N -  eliminatedCount)
