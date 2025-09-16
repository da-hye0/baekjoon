import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let K = input[1]

var divisors: [Int] = []

for i in 1...N {
    if N % i == 0 {
        divisors.append(i)
    }
}

if divisors.count < K {
    print(0)
} else {
    print(divisors[K - 1])
}