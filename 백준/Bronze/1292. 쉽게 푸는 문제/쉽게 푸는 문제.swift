import Foundation

var arr: [Int] = []
for i in 1..<50 {
    arr.append(contentsOf: [Int](repeating: i, count: i))
}
let input = readLine()!.split(separator: " ").map { Int($0)! - 1 }
print(arr[input[0]...input[1]].reduce(0, +))

