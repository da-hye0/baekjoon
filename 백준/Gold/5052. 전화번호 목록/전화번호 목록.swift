import Foundation

let N = Int(readLine()!)!

for _ in 0..<N {
    var array: [String] = []
    var flag: Bool = true
    let n = Int(readLine()!)!
    for i in 0..<n {
        let inputs = readLine()!
        array.append(inputs)
    }
    array.sort()
    
    for i in 0..<n-1 {
        if array[i+1].hasPrefix(array[i]) {
            flag = false
            break
        }
    }
    print(flag ? "YES" : "NO")
}
