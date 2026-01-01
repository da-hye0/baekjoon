import Foundation

func solve() {
    guard let inputN = readLine(), let n = Int(inputN) else { return }
    guard let line1 = readLine() else { return }
    let round1 = line1.split(separator: " ").compactMap { Int($0) }
    
    guard let line2 = readLine() else { return }
    let round2 = line2.split(separator: " ").compactMap { Int($0) }
    
    let maxRound1 = round1.reduce(0) { $0 + abs($1) }
    let minRound2 = round2.reduce(0) { $0 + (-abs($1)) }
    
    let totalScore = maxRound1 - minRound2
    print(totalScore)
}
solve()