import Foundation

var arr = readLine()!.split(separator: " ").map{Int($0)!}
arr.sort()
print(arr.map{String($0)}.joined(separator: " "))