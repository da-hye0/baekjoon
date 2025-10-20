import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0) }
let N = input[0]
var L = input[1]!
var fruits = readLine()!.split(separator: " ").map{ Int($0)! }

fruits.sort()

for fruit in fruits {
    if fruit <= L {
        L += 1
    } else {
        break
    }
}
print(L)
