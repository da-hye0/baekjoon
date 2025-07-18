import Foundation

func isBalanced(text: String) -> Bool {
    var stack: [Character] = []

    for char in text {
        if char == "(" || char == "[" {
            stack.append(char)
        }
        else if char == ")" {
            if stack.isEmpty || stack.removeLast() != "(" {
                return false
            }
        }
        else if char == "]" {
            if stack.isEmpty || stack.removeLast() != "[" {
                return false
            }
        }
    }

    return stack.isEmpty
}

while true {
    let input = readLine()!
    if input == "." {
        break
    }
    
    if isBalanced(text: input) {
        print("yes")
    } else {
        print("no")
    }
}