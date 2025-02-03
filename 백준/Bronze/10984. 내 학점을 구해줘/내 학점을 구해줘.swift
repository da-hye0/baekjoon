import Foundation

var cycle = Int(readLine()!)!
for _ in 0..<cycle {
    let table = Int(readLine()!)!
    var C = 0
    var A: Double = 0
    for _ in 0..<table {
        let input = readLine()!.components(separatedBy: " ")
        C += Int(input[0]) ?? 0
        A += (Double(input[0]) ?? 0) * (Double(input[1]) ?? 0)
    }
    let temp = A/Double(C)
    let change = String(format: "%.1f", temp)
    print("\(C) \(change)")
}
