import Foundation

let n = Int(readLine()!)!
var a = 1, b = 0
for _ in 1...n { 
    (a, b) = (b, a + b) 
}

print("\(a) \(b)")