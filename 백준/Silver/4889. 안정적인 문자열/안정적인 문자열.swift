import Foundation

func solve() {
    
    var input: [String] = []
    var res: [Int] = []
    
    while true {
        let inputTmp = readLine() ?? ""
        
        if inputTmp.contains("-") {
            break
        } else {
            input.append(inputTmp)
        }
    }
    
    for checkString in input {
        var stack: [Character] = []
        var score = 0
        
        for char in checkString {
            if char == "}" && stack.last == "{" {
                stack.removeLast()
            }
            else {
                stack.append(char)
            }
        }
        
        for j in 0..<stack.count {
            if j%2 == 1 {
                if stack[j] != "}" { score += 1}
            } else {
                if stack[j] != "{" { score += 1}
            }
        }
        
        res.append(score)
    }
    
    for i in 0..<res.count {
        print("\(i+1). \(res[i])")
    }
}
solve()