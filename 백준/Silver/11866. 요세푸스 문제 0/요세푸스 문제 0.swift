import Foundation

let input = readLine()!.split(separator: " ").map {Int($0)!}
let N = input[0]
let K = input[1]

var queue = Array(1...N)
var result = Array<Int>()

var i = 0

while !queue.isEmpty {
    i = (i + K - 1) % queue.count

    let removedPerson = queue.remove(at: i)
    result.append(removedPerson)
}

print("<\(result.map { String($0) }.joined(separator: ", "))>")