import Foundation

let parts = readLine()!.split(separator: "-")
let firstPartSum = parts[0].split(separator: "+")
                           .map { Int(String($0))! }
                           .reduce(0, +)
var result = firstPartSum
if parts.count > 1 {
    for i in 1..<parts.count {
        let sumToSubtract = parts[i].split(separator: "+")
                                    .map { Int(String($0))! }
                                    .reduce(0, +)
        result -= sumToSubtract
    }
}
print(result)