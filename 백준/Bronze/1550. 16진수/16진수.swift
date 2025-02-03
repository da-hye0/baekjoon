import Foundation

var value = readLine()!

var result : Int = Int(value, radix: 16)!
var newResult : String = String(result, radix : 10)

print(newResult)