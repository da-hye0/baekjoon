import Foundation

let S = readLine()!
var result = ""
var isTag = false
var tempWord = ""

for char in S {
    if char == "<" {
        if !tempWord.isEmpty {
            result.append(String(tempWord.reversed()))
            tempWord = ""
        }
        result.append(char)
        isTag = true
    } else if char == ">" {
        result.append(char)
        isTag = false
    } else if isTag {
        result.append(char)
    } else {
        if char == " " {
            result.append(String(tempWord.reversed()))
            tempWord = ""
            result.append(char)
        } else {
            tempWord.append(char)
        }
    }
}

if !tempWord.isEmpty {
    result.append(String(tempWord.reversed()))
    tempWord = ""
}

print(result)