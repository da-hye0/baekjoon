let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], l = input[1]
let holes = readLine()!.split(separator: " ").map { Int($0)! }.sorted()

var tapeCount = 1
var tapeEnd = holes[0] + l - 1

for i in 1..<n {
    if holes[i] > tapeEnd {
        tapeCount += 1
        tapeEnd = holes[i] + l - 1
    }
}

print(tapeCount)