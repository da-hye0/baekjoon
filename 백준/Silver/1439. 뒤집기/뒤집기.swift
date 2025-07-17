import Foundation

func solve() {
    let input = Array(readLine() ?? "")
    let flag = input[0]
    var checker = 0
    var num = 0
    
    for i in 1..<input.count {
        if checker == 0 && flag != input[i] {
            checker = 1
            num += 1
        } else if checker == 1 && flag == input[i] {
            checker = 0
        }
    }
    
    print(num)
}

solve()