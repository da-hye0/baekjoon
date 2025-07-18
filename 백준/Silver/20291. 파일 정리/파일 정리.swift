import Foundation

let num = Int(readLine()!) ?? 0
let arr = (0..<num).map { _ in String(readLine()!.split(separator: ".")[1]) }

let counts = arr.reduce(into: [:]) { counts, word in counts[word, default: 0] += 1 }

counts.sorted { $0.key < $1.key } .forEach { print("\($0.key) \($0.value)") }