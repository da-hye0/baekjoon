import Foundation

let inputString = readLine()!
let bombString = readLine()!

var resultStack: [Character] = []
let bombArray = Array(bombString)
let bombLength = bombArray.count

if bombLength == 0 {
    print(inputString)
    exit(0)
}
let bombLastChar = bombArray.last!
for char in inputString {
    resultStack.append(char)
    if char == bombLastChar && resultStack.count >= bombLength {
        var isBomb = true
        for i in 0..<bombLength {
            if resultStack[resultStack.count - bombLength + i] != bombArray[i] {
                isBomb = false
                break
            }
        }

        if isBomb {
            resultStack.removeLast(bombLength)
        }
    }
}

if resultStack.isEmpty {
    print("FRULA")
} else {
    print(String(resultStack))
}
