import Foundation

var input = Array(readLine() ?? "")
input.sort(by: >)

if input.last != "0" {
    print("-1")
} else {
    var sum = 0
    for char in input {
    
        if let digit = Int(String(char)) {
            sum += digit
        }
    }
    if sum % 3 == 0 {
        print(String(input))
    } else {
        print("-1")
    }
}