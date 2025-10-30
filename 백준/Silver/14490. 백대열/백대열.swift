import Foundation

func gcd(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    } else {
        return gcd(b, a % b)
    }
}

let input = readLine()!.split(separator: ":").map { Int($0)! }
let n = input[0]
let m = input[1]

let divisor = gcd(n, m)

print("\(n / divisor):\(m / divisor)")