import Foundation

let findString = readLine()
let number = Int(readLine() ?? "") ?? 0
var stringArray: [String] = []
var result = 0

for i in 0..<number {
    let inputString = readLine() ?? ""
    stringArray.append(inputString + inputString)
}

for i in 0..<number {
    if stringArray[i].contains(findString ?? "XYZ") {
        result += 1
    }
}

print(result)