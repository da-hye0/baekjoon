import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let M = input[1]

var passwardWithDic = [String: String]()

for _ in 0..<N {
    let pwd = readLine()!.split(separator: " ")
    let site = String(pwd[0])
    let password = String(pwd[1])

    passwardWithDic[site] = password
}

for _ in 0..<M {
    let find = readLine()!
    print(passwardWithDic[find] ?? "")
}