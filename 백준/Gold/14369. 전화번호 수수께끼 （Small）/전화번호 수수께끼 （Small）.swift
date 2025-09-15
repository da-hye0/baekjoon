import Foundation

let uniqueClues: [(digit: Int, uniqueChar: Character, word: String)] = [
    (0, "Z", "ZERO"), (2, "W", "TWO"), (4, "U", "FOUR"), (6, "X", "SIX"),
    (8, "G", "EIGHT"), (3, "H", "THREE"), (5, "F", "FIVE"), (7, "S", "SEVEN"),
    (1, "O", "ONE"), (9, "I", "NINE")
]

func solve(for inputString: String) -> String {
    var counts: [Character: Int] = [:]
    for char in inputString {
        counts[char, default: 0] += 1
    }
    
    var resultDigits: [Int] = []

    for clue in uniqueClues {
        if let foundCount = counts[clue.uniqueChar], foundCount > 0 {
            resultDigits += Array(repeating: clue.digit, count: foundCount)
            for charInWord in clue.word {
                counts[charInWord, default: 0] -= foundCount
            }
        }
    }
    
    return resultDigits.sorted().map { String($0) }.joined()
}

let T = Int(readLine()!)!

for t in 1...T {
    let S = readLine()!
    let phoneNumber = solve(for: S)
    print("Case #\(t): \(phoneNumber)")
}