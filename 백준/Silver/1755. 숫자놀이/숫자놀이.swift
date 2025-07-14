import Foundation

let input = readLine() ?? ""
let numbers = input.components(separatedBy: " ")

let num1 = Int(numbers.first ?? "") ?? 0
let num2 = Int(numbers.last ?? "") ?? 0

let stringArray: [String] = ["z", "o", "tw", "th", "fo", "fi", "si", "se", "e", "n"]

var numberToStringMap: [Int: String] = [:]

for i in num1...num2 {
    if i < 10 {
        numberToStringMap[i] = stringArray[i]
    } else {
        numberToStringMap[i] = stringArray[i / 10] + stringArray[i % 10]
    }
}

let sortedPairs = numberToStringMap.sorted { $0.value < $1.value }

for (index, pair) in sortedPairs.enumerated() {
    let number = pair.key
    print(number, terminator: " ")

    if (index + 1) % 10 == 0 {print()}
}