import Foundation
let input = readLine()!.split(separator: " ").map{ Int($0)! }
let N = input[0]
var K = input[1]
var result = 0
var coins: [Int] = []

for _ in 0..<N {
    let coin = Int(readLine()!)!
    coins.append(coin)
}
coins = coins.reversed()
for coin in coins {
    if K < coin {
        continue
    }
    
    result += (K / coin)
    K = K % coin
}

print(result)