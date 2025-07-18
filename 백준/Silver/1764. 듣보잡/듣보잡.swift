import Foundation

func solve() {
    
    let input = readLine()!
    let numbers = input.split(separator: " ").map { Int($0)! }
    let num1 = numbers[0]
    let num2 = numbers[1]
    
    var array1: [String] = []
    var array2: [String] = []
    
    for _ in 0..<num1 {
        array1.append(readLine() ?? "")
    }
    
    for  _ in 0..<num2 {
        array2.append(readLine() ?? "")
    }
    let res = Set(array1).intersection(Set(array2)).sorted()
    print(res.count)
    for i in res {
        print(i)
    }
}
solve()