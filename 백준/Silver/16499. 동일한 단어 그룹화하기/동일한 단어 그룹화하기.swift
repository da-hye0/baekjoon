import Foundation

let wordNum = Int(readLine() ?? "") ?? 0
var words: [String] = []

for _ in 0..<wordNum {
    if let input = readLine() {
        let sortedWord = String(input.sorted())
        words.append(sortedWord)
    }
}

print(Set(words).count)