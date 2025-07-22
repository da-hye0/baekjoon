import Foundation

let vowels: Set<Character> = ["a", "e", "i", "o", "u"]
func isAcceptable(string: String) -> Bool {

    guard string.contains(where: { vowels.contains($0) }) else {
        return false
    }

    let chars = Array(string)

    for i in 0..<chars.count {
        if i <= chars.count - 3 {
            let slice = chars[i...i+2]
            let isAllVowels = slice.allSatisfy { vowels.contains($0) }
            let isAllConsonants = slice.allSatisfy { !vowels.contains($0) }
            
            if isAllVowels || isAllConsonants {
                return false
            }
        }
        
        if i <= chars.count - 2 {
            if chars[i] == chars[i+1] && chars[i] != "e" && chars[i] != "o" {
                return false
            }
        }
    }

    return true
}

var lines: [String] = []

while true {
    let input = readLine() ?? ""
    if input == "end" {
        break
    } else {
        lines.append(input)
    }
}

for line in lines {
    let result = isAcceptable(string: line) ? "acceptable" : "not acceptable"
    print("<\(line)> is \(result).")
}
