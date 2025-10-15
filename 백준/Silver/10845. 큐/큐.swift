import Foundation

let N = Int(readLine()!)!
var queue: [Int] = []
for _ in 0..<N {
    let input = readLine()!

    if input.hasPrefix("push ") {
        let numberString = input.dropFirst("push ".count)
        if let number = Int(numberString) {
            queue.append(number)
        }
    } else if input == "pop" {
        if !queue.isEmpty {
            print("\(queue.first!)")
            queue.removeFirst()
        } else {
            print("-1")
        }
    } else if input == "size" {
        print("\(queue.count)")
    } else if input == "empty" {
        queue.isEmpty ? print("1") : print("0")
    } else if input == "front" {
        queue.isEmpty ? print("-1") : print(queue.first!)
    } else if input == "back" {
        queue.isEmpty ? print("-1") : print(queue.last!)
    }
}