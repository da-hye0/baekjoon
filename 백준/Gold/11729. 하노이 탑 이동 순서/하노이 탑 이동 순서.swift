import Foundation

var moves: [(from: Int, to: Int)] = []

func hanoi(n: Int, start: Int, destination: Int, helper: Int) {
    if n == 1 {
        moves.append((from: start, to: destination))
        return
    }

    hanoi(n: n - 1, start: start, destination: helper, helper: destination)
    moves.append((from: start, to: destination))
    hanoi(n: n - 1, start: helper, destination: destination, helper: start)
}

let N = Int(readLine()!)!

let totalMoves = (1 << N) - 1
print(totalMoves)

hanoi(n: N, start: 1, destination: 3, helper: 2)

for move in moves {
    print("\(move.from) \(move.to)")
}
