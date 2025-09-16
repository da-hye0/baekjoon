import Foundation

class SegmentTree {

    var tree: [(min: Int, max: Int)]
    let numbers: [Int]

    init(numbers: [Int]) {
        self.numbers = numbers
        let treeSize = numbers.count * 4
        self.tree = Array(repeating: (Int.max, Int.min), count: treeSize)
        build(node: 1, start: 0, end: numbers.count - 1)
    }

    func build(node: Int, start: Int, end: Int) {
        if start == end { // 맨 아래 선수(숫자)인 경우
            tree[node] = (numbers[start], numbers[start])
            return
        }

        let mid = (start + end) / 2
        build(node: node * 2, start: start, end: mid)
        build(node: node * 2 + 1, start: mid + 1, end: end)

        let leftChild = tree[node * 2]
        let rightChild = tree[node * 2 + 1]
        tree[node] = (min(leftChild.min, rightChild.min), max(leftChild.max, rightChild.max))
    }

    func query(left: Int, right: Int) -> (min: Int, max: Int) {
        return find(node: 1, start: 0, end: numbers.count - 1, left: left, right: right)
    }
    
    func find(node: Int, start: Int, end: Int, left: Int, right: Int) -> (min: Int, max: Int) {
        if start > right || end < left {
            return (Int.max, Int.min)
        }

        if left <= start && end <= right {
            return tree[node]
        }
        
        let mid = (start + end) / 2
        let leftResult = find(node: node * 2, start: start, end: mid, left: left, right: right)
        let rightResult = find(node: node * 2 + 1, start: mid + 1, end: end, left: left, right: right)
        
        return (min(leftResult.min, rightResult.min), max(leftResult.max, rightResult.max))
    }
}

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let M = input[1]

var numbers: [Int] = []
for _ in 0..<N {
    numbers.append(Int(readLine()!)!)
}

let segTree = SegmentTree(numbers: numbers)

for _ in 0..<M {
    let rangeInput = readLine()!.split(separator: " ").map { Int($0)! }
    let start = rangeInput[0]
    let end = rangeInput[1]

    let result = segTree.query(left: start - 1, right: end - 1)
    print("\(result.min) \(result.max)")
}