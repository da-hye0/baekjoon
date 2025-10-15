import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let K = input[1]

if N == 1 {
    print("<1>")
} else {
    class Node {
        let value: Int
        var next: Node?

        init(_ value: Int) {
            self.value = value
        }
    }

    let head = Node(1)
    var currentNode = head

    for i in 2...N {
        let newNode = Node(i)
        currentNode.next = newNode
        currentNode = newNode
    }
    currentNode.next = head

    var result: [Int] = []
    var prevNode = currentNode

    while result.count < N {
        for _ in 0..<K-1 {
            prevNode = prevNode.next!
        }

        let targetNode = prevNode.next!
        result.append(targetNode.value)
        
        prevNode.next = targetNode.next
    }

    print("<\(result.map { String($0) }.joined(separator: ", "))>")
}