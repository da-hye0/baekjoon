import Foundation

func solve() {
    
    var num = Int(readLine() ?? "") ?? 0
    var input: [String] = []
    var res = 0
    
    for _ in 0..<num {
        input.append(readLine() ?? "")
    }
    
    for checkInput in input {
        var tmp = Set(checkInput)
        var chekingChar: Character = " "
        var isGroupWord = true

        for i in checkInput {
            if chekingChar != i {
                if !tmp.contains(i) {
                    isGroupWord = false
                    break
                }
                chekingChar = i
                tmp.remove(i)
            }
        }
        if isGroupWord {
            res += 1
        }
    }
    
    print(res)
}
solve()